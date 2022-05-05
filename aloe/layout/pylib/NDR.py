import os
class NDR(object):
    '''
    For creating non-default routing rules
    Ideally called once before top.tcl
    '''
    def __init__(self, nets, width_mults, space_mults, layer_span, bot_pfd_layer, fndr='ndr.tcl'):
        self.ndr = ''
        self.nets = nets
        self.width_mults = width_mults
        self.space_mults = space_mults
        self.layer_span = layer_span
        self.bot_pfd_layer = bot_pfd_layer
        self.fndr = fndr
        # Don't do self.write because it will append everytime def_ip is called

    def create_ndr_cmd(self):
        '''
        Functions:
          * Create ndr name
          * Create ndr command
        '''
        _ndr_lst = []
        _width_lst = []
        _space_lst = []
        for idx in range(len(self.layer_span)):
            _ndr_lst.append('M{}W{}xS{}x'.format(
                str(self.layer_span[idx]),
                str(self.width_mults[idx]),
                str(self.space_mults[idx])))
            if self.width_mults[idx] > 1:
                _width_lst.append('M{} {}'.format(
                    str(self.layer_span[idx]),
                    str(self.width_mults[idx])))
            if self.space_mults[idx] > 1:
                _space_lst.append('M{} {}'.format(
                    str(self.layer_span[idx]),
                    str(self.space_mults[idx])))

        self.ndr = '_'.join(_ndr_lst)
        widths = ' '.join(_width_lst)
        spaces = ' '.join(_space_lst)
        return 'add_ndr -name {} -generate_via -width_multiplier {{{}}} -spacing_multiplier {{{}}}\n'\
                .format(self.ndr, widths, spaces)

    def create_attr_cmd(self):
        '''
        Function: Create attribute command for a certain NDR
        '''
        _attr_lst = []
        for idx in range(len(self.nets)):
            _attr_lst.append('setAttribute -net {} -non_default_rule {} -bottom_preferred_routing_layer {} -preferred_routing_layer_effort high\n'\
                        .format(self.nets[idx], self.ndr, self.bot_pfd_layer))
        return ''.join(_attr_lst)
    
    def write(self):
        with open(self.fndr, 'a+') as fo:
            fo.write(self.create_ndr_cmd())
            fo.write(self.create_attr_cmd())
    @staticmethod
    def remove(fndr):
        '''
        Function: Remove fndr before each creation of fndr.
        Note: Since fndr is in append mode, remove can only be called once
              every run (where there are multiple ndr)

        '''
        if os.path.exists(fndr):
            os.remove(fndr)

if __name__ == '__main__':
    nets = ['N1', 'N2']
    w_mults = [4, 4, 4, 4]
    s_mults = [3, 3, 3, 3]
    layers = [2, 3, 4, 5]
    bot_layer = 2
    fndr = 'ndr.tcl'
    NDR.remove(fndr)
    ndr0 = NDR(nets, w_mults, s_mults, layers, bot_layer, fndr)
    ndr0.write()
    
