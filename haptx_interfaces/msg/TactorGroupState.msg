# This is a message that holds data to describe the state of the tactors
# in a tactor group. 
#
# The state of the tactors in the tactor group is defined by:
#  * a float indicating how much to inflate the tactor group [0,1]
#
# Each tactor group is uniquely identified by its name
#
# All arrays in this message should have the same size.
# This is the only way to uniquely associate the tactor group name with the
# correct inflation value.

string[] tactor_group
float64[] inflation