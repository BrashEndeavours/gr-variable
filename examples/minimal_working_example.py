#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Minimal Working Example
# Generated: Sun Oct 29 14:33:57 2017
##################################################

from gnuradio import analog
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from optparse import OptionParser
from var.var_sink_x import var_sink_b
import logging


class minimal_working_example(gr.top_block):

    def __init__(self):
        gr.top_block.__init__(self, "Minimal Working Example")

        ##################################################
        # Variables
        ##################################################
        self.samp_rate = samp_rate = 32000

        ##################################################
        # Blocks
        ##################################################
        self.var_sink_x_0 = var_sink_b(
        		num_inputs=1,
        		log_level=logging.NOTSET,
         		log_filename=''
        	)
        self.analog_random_uniform_source_x_0 = analog.random_uniform_source_b(0, 200, 0)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_random_uniform_source_x_0, 0), (self.var_sink_x_0, 0))

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate


def main(top_block_cls=minimal_working_example, options=None):

    tb = top_block_cls()
    tb.start()
    try:
        raw_input('Press Enter to quit: ')
    except EOFError:
        pass
    tb.stop()
    tb.wait()


if __name__ == '__main__':
    main()
