SASS-FORMAT(1)                                                  SASS-FORMAT(1)



NNAAMMEE
       ssaassss--ffoorrmmaatt - nicely align property values in .sass files

SSyynnooppssiiss
       ssaassss--ffoorrmmaatt _f_i_l_e _f_i_l_e
       ssaassss--ffoorrmmaatt --ss|----ssttddiinn [_f_i_l_e]
       ssaassss--ffoorrmmaatt --ee|----eeddiitt--iinn--ppllaaccee _f_i_l_e...
       ssaassss--ffoorrmmaatt --RR|----rreeccuurrssiivvee _d_i_r_e_c_t_o_r_y

DDeessccrriippttiioonn
       sass-format  is a command-line tool to format .sass files in the mildly
       idiosyncratic style used at Unspace _h_t_t_p_:_/_/_u_n_s_p_a_c_e_._c_a. That means:

       1.  All property values and arguments to @@eexxtteenndd calls are placed at an
           (at least) 30-character left offset.

       2.  Unless  they start with a -- (e.g. lleefftt:: --3300ppxx) or a .. (e.g. @@eexxtteenndd
           ..bbuuttttoonn), in which case they're shifted left 1 character.



FFoorrmmaatt eexxaammppllee
       #wrapper
         .sidebar
           :border-top               8px solid black
           :margin-right            -100px
         .content
           :width                    500px
           @extend                  .helvetica

OOppttiioonnss
       --ss, ----ssttddiinn
              Read input from standard input instead of an input file.

       --ee, ----eeddiitt--iinn--ppllaaccee
              Edit files in place. Make sure you've backed them up (preferably
              using version control).

       --RR, ----rreeccuurrssiivvee
              Format all the files in a directory. Implies the `-e' flag.

       --oo NN, ----ooffffsseett NN
              Specify  left character offset for property values (default 30).




                                September 2011                  SASS-FORMAT(1)
