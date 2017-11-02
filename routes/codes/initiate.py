import oct2py as op
import sys
octave = op.Oct2Py();
#octave.push('amount',60000)
#octave.push('locPin',110015)
#octave.push('time',3)
#octave.push('merchPin',888888)
#print sys.argv;
amount = float(sys.argv[2]);
locPin = float(sys.argv[3]);
time = float(sys.argv[4]);
merchPin = float(sys.argv[5]);
octave.main(sys.argv[1],amount,locPin,time,merchPin);
