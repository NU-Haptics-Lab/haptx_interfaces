# This is a message that holds data to describe the state of the tactors. 
#
# The state of the tactors are defined by:
#  * a float indicating how much to inflate the tactor [0,1]
#
# Each tactor is uniquely identified by its ID
#
# All arrays in this message should have the same size.
# This is the only way to uniquely associate the tactor ID with the
# correct inflation value.

int32[] tactor_id
float64[] inflation