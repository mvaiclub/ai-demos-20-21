??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
string_lookup_3_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name
table_2337*
value_dtype0
?
string_lookup_2_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_2318*
value_dtype0	
?
!my_model_1/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C?*2
shared_name#!my_model_1/embedding_1/embeddings
?
5my_model_1/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp!my_model_1/embedding_1/embeddings*
_output_shapes
:	C?*
dtype0
?
my_model_1/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C**
shared_namemy_model_1/dense_1/kernel
?
-my_model_1/dense_1/kernel/Read/ReadVariableOpReadVariableOpmy_model_1/dense_1/kernel*
_output_shapes
:	?C*
dtype0
?
my_model_1/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*(
shared_namemy_model_1/dense_1/bias

+my_model_1/dense_1/bias/Read/ReadVariableOpReadVariableOpmy_model_1/dense_1/bias*
_output_shapes
:C*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
"my_model_1/gru_1/gru_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"my_model_1/gru_1/gru_cell_1/kernel
?
6my_model_1/gru_1/gru_cell_1/kernel/Read/ReadVariableOpReadVariableOp"my_model_1/gru_1/gru_cell_1/kernel* 
_output_shapes
:
??*
dtype0
?
,my_model_1/gru_1/gru_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,my_model_1/gru_1/gru_cell_1/recurrent_kernel
?
@my_model_1/gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp,my_model_1/gru_1/gru_cell_1/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
 my_model_1/gru_1/gru_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" my_model_1/gru_1/gru_cell_1/bias
?
4my_model_1/gru_1/gru_cell_1/bias/Read/ReadVariableOpReadVariableOp my_model_1/gru_1/gru_cell_1/bias*
_output_shapes
:	?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
(Adam/my_model_1/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C?*9
shared_name*(Adam/my_model_1/embedding_1/embeddings/m
?
<Adam/my_model_1/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp(Adam/my_model_1/embedding_1/embeddings/m*
_output_shapes
:	C?*
dtype0
?
 Adam/my_model_1/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C*1
shared_name" Adam/my_model_1/dense_1/kernel/m
?
4Adam/my_model_1/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/my_model_1/dense_1/kernel/m*
_output_shapes
:	?C*
dtype0
?
Adam/my_model_1/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*/
shared_name Adam/my_model_1/dense_1/bias/m
?
2Adam/my_model_1/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/my_model_1/dense_1/bias/m*
_output_shapes
:C*
dtype0
?
)Adam/my_model_1/gru_1/gru_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*:
shared_name+)Adam/my_model_1/gru_1/gru_cell_1/kernel/m
?
=Adam/my_model_1/gru_1/gru_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/my_model_1/gru_1/gru_cell_1/kernel/m* 
_output_shapes
:
??*
dtype0
?
3Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*D
shared_name53Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/m
?
GAdam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp3Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
'Adam/my_model_1/gru_1/gru_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/my_model_1/gru_1/gru_cell_1/bias/m
?
;Adam/my_model_1/gru_1/gru_cell_1/bias/m/Read/ReadVariableOpReadVariableOp'Adam/my_model_1/gru_1/gru_cell_1/bias/m*
_output_shapes
:	?*
dtype0
?
(Adam/my_model_1/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C?*9
shared_name*(Adam/my_model_1/embedding_1/embeddings/v
?
<Adam/my_model_1/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp(Adam/my_model_1/embedding_1/embeddings/v*
_output_shapes
:	C?*
dtype0
?
 Adam/my_model_1/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C*1
shared_name" Adam/my_model_1/dense_1/kernel/v
?
4Adam/my_model_1/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/my_model_1/dense_1/kernel/v*
_output_shapes
:	?C*
dtype0
?
Adam/my_model_1/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*/
shared_name Adam/my_model_1/dense_1/bias/v
?
2Adam/my_model_1/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/my_model_1/dense_1/bias/v*
_output_shapes
:C*
dtype0
?
)Adam/my_model_1/gru_1/gru_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*:
shared_name+)Adam/my_model_1/gru_1/gru_cell_1/kernel/v
?
=Adam/my_model_1/gru_1/gru_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/my_model_1/gru_1/gru_cell_1/kernel/v* 
_output_shapes
:
??*
dtype0
?
3Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*D
shared_name53Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/v
?
GAdam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp3Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
'Adam/my_model_1/gru_1/gru_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/my_model_1/gru_1/gru_cell_1/bias/v
?
;Adam/my_model_1/gru_1/gru_cell_1/bias/v/Read/ReadVariableOpReadVariableOp'Adam/my_model_1/gru_1/gru_cell_1/bias/v*
_output_shapes
:	?*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_1Const*
_output_shapes
:C*
dtype0*?
value?B?C"?  ??  ??                                                                                                                                                                                                                                                                    
M
Const_2Const*
_output_shapes
: *
dtype0*
valueB B[UNK]
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_50135
?
PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_50140
2
NoOpNoOp^PartitionedCall^PartitionedCall_1
?
Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2string_lookup_3_index_table*
Tkeys0	*
Tvalues0*.
_class$
" loc:@string_lookup_3_index_table*
_output_shapes

::
?
Jstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2string_lookup_2_index_table*
Tkeys0*
Tvalues0	*.
_class$
" loc:@string_lookup_2_index_table*
_output_shapes

::
?*
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*?*
value?*B?* B?*
R
	model
chars_from_ids
ids_from_chars
	keras_api

signatures
?
	embedding
gru
	dense
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api
0
state_variables

_table
	keras_api
0
state_variables

_table
	keras_api
 
 
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
 bias
!trainable_variables
"	variables
#regularization_losses
$	keras_api
?
%iter

&beta_1

'beta_2
	(decay
)learning_ratemPmQ mR*mS+mT,mUvVvW vX*vY+vZ,v[
*
0
*1
+2
,3
4
 5
*
0
*1
+2
,3
4
 5
 
?

-layers

trainable_variables
.non_trainable_variables
	variables
regularization_losses
/layer_regularization_losses
0layer_metrics
1metrics
 
20
table'chars_from_ids/_table/.ATTRIBUTES/table
 
 
20
table'ids_from_chars/_table/.ATTRIBUTES/table
 
lj
VARIABLE_VALUE!my_model_1/embedding_1/embeddings5model/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?

2layers
trainable_variables
3non_trainable_variables
	variables
regularization_losses
4layer_regularization_losses
5layer_metrics
6metrics
~

*kernel
+recurrent_kernel
,bias
7trainable_variables
8	variables
9regularization_losses
:	keras_api
 

*0
+1
,2

*0
+1
,2
 
?

;layers
trainable_variables
<non_trainable_variables
	variables
regularization_losses
=layer_regularization_losses
>layer_metrics

?states
@metrics
\Z
VARIABLE_VALUEmy_model_1/dense_1/kernel-model/dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmy_model_1/dense_1/bias+model/dense/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
?

Alayers
!trainable_variables
Bnon_trainable_variables
"	variables
#regularization_losses
Clayer_regularization_losses
Dlayer_metrics
Emetrics
NL
VARIABLE_VALUE	Adam/iter/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEAdam/beta_11model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEAdam/beta_21model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUE
Adam/decay0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEAdam/learning_rate8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE"my_model_1/gru_1/gru_cell_1/kernel6model/trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE,my_model_1/gru_1/gru_cell_1/recurrent_kernel6model/trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE my_model_1/gru_1/gru_cell_1/bias6model/trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 
 
 

F0
 
 
 
 
 

*0
+1
,2

*0
+1
,2
 
?

Glayers
7trainable_variables
Hnon_trainable_variables
8	variables
9regularization_losses
Ilayer_regularization_losses
Jlayer_metrics
Kmetrics

0
 
 
 
 
 
 
 
 
 
 
4
	Ltotal
	Mcount
N	variables
O	keras_api
 
 
 
 
 
US
VARIABLE_VALUEtotal:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcount:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

N	variables
??
VARIABLE_VALUE(Adam/my_model_1/embedding_1/embeddings/mWmodel/embedding/embeddings/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/my_model_1/dense_1/kernel/mOmodel/dense/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/my_model_1/dense_1/bias/mMmodel/dense/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/my_model_1/gru_1/gru_cell_1/kernel/mXmodel/trainable_variables/1/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/mXmodel/trainable_variables/2/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/my_model_1/gru_1/gru_cell_1/bias/mXmodel/trainable_variables/3/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/my_model_1/embedding_1/embeddings/vWmodel/embedding/embeddings/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/my_model_1/dense_1/kernel/vOmodel/dense/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/my_model_1/dense_1/bias/vMmodel/dense/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/my_model_1/gru_1/gru_cell_1/kernel/vXmodel/trainable_variables/1/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/vXmodel/trainable_variables/2/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/my_model_1/gru_1/gru_cell_1/bias/vXmodel/trainable_variables/3/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCallStatefulPartitionedCallsaver_filenameJstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2Lstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2:1Jstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2Lstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2:15my_model_1/embedding_1/embeddings/Read/ReadVariableOp-my_model_1/dense_1/kernel/Read/ReadVariableOp+my_model_1/dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp6my_model_1/gru_1/gru_cell_1/kernel/Read/ReadVariableOp@my_model_1/gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOp4my_model_1/gru_1/gru_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp<Adam/my_model_1/embedding_1/embeddings/m/Read/ReadVariableOp4Adam/my_model_1/dense_1/kernel/m/Read/ReadVariableOp2Adam/my_model_1/dense_1/bias/m/Read/ReadVariableOp=Adam/my_model_1/gru_1/gru_cell_1/kernel/m/Read/ReadVariableOpGAdam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/m/Read/ReadVariableOp;Adam/my_model_1/gru_1/gru_cell_1/bias/m/Read/ReadVariableOp<Adam/my_model_1/embedding_1/embeddings/v/Read/ReadVariableOp4Adam/my_model_1/dense_1/kernel/v/Read/ReadVariableOp2Adam/my_model_1/dense_1/bias/v/Read/ReadVariableOp=Adam/my_model_1/gru_1/gru_cell_1/kernel/v/Read/ReadVariableOpGAdam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/v/Read/ReadVariableOp;Adam/my_model_1/gru_1/gru_cell_1/bias/v/Read/ReadVariableOpConst_3**
Tin#
!2			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_50251
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamestring_lookup_3_index_tablestring_lookup_2_index_table!my_model_1/embedding_1/embeddingsmy_model_1/dense_1/kernelmy_model_1/dense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate"my_model_1/gru_1/gru_cell_1/kernel,my_model_1/gru_1/gru_cell_1/recurrent_kernel my_model_1/gru_1/gru_cell_1/biastotalcount(Adam/my_model_1/embedding_1/embeddings/m Adam/my_model_1/dense_1/kernel/mAdam/my_model_1/dense_1/bias/m)Adam/my_model_1/gru_1/gru_cell_1/kernel/m3Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/m'Adam/my_model_1/gru_1/gru_cell_1/bias/m(Adam/my_model_1/embedding_1/embeddings/v Adam/my_model_1/dense_1/kernel/vAdam/my_model_1/dense_1/bias/v)Adam/my_model_1/gru_1/gru_cell_1/kernel/v3Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/v'Adam/my_model_1/gru_1/gru_cell_1/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_50342??
?
K
__inference__creator_49958
identity??string_lookup_2_index_table?
string_lookup_2_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_2318*
value_dtype0	2
string_lookup_2_index_table?
IdentityIdentity*string_lookup_2_index_table:table_handle:0^string_lookup_2_index_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 2:
string_lookup_2_index_tablestring_lookup_2_index_table
?
?
E__inference_my_model_1_layer_call_and_return_conditional_losses_48308

inputs	
embedding_1_48278
gru_1_48294
gru_1_48296
gru_1_48298
dense_1_48302
dense_1_48304
identity??dense_1/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?gru_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_48278*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_477852%
#embedding_1/StatefulPartitionedCallj
ShapeShape,embedding_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
gru_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0zeros:output:0gru_1_48294gru_1_48296gru_1_48298*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_481052
gru_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_1_48302dense_1_48304*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dC*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_481722!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?!
?
while_body_47575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_gru_cell_1_47597_0
while_gru_cell_1_47599_0
while_gru_cell_1_47601_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_1_47597
while_gru_cell_1_47599
while_gru_cell_1_47601??(while/gru_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/gru_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_1_47597_0while_gru_cell_1_47599_0while_gru_cell_1_47601_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_472742*
(while/gru_cell_1/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity1while/gru_cell_1/StatefulPartitionedCall:output:1)^while/gru_cell_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4"2
while_gru_cell_1_47597while_gru_cell_1_47597_0"2
while_gru_cell_1_47599while_gru_cell_1_47599_0"2
while_gru_cell_1_47601while_gru_cell_1_47601_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2T
(while/gru_cell_1/StatefulPartitionedCall(while/gru_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
*__inference_gru_cell_1_layer_call_fn_50062

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_472742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
gru_1_while_cond_48648(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2(
$gru_1_while_less_gru_1_strided_slice?
;gru_1_while_gru_1_while_cond_48648___redundant_placeholder0?
;gru_1_while_gru_1_while_cond_48648___redundant_placeholder1?
;gru_1_while_gru_1_while_cond_48648___redundant_placeholder2?
;gru_1_while_gru_1_while_cond_48648___redundant_placeholder3
gru_1_while_identity
?
gru_1/while/LessLessgru_1_while_placeholder$gru_1_while_less_gru_1_strided_slice*
T0*
_output_shapes
: 2
gru_1/while/Lesso
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_1/while/Identity"5
gru_1_while_identitygru_1/while/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
F__inference_embedding_1_layer_call_and_return_conditional_losses_47785

inputs	,
(embedding_lookup_readvariableop_resource
identity??embedding_lookup/ReadVariableOp?
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*
_output_shapes
:	C?*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*,
_output_shapes
:?????????d?2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*,
_output_shapes
:?????????d?2
embedding_lookup/Identity?
IdentityIdentity"embedding_lookup/Identity:output:0 ^embedding_lookup/ReadVariableOp*
T0*,
_output_shapes
:?????????d?2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:2B
embedding_lookup/ReadVariableOpembedding_lookup/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?]
?
@__inference_gru_1_layer_call_and_return_conditional_losses_49713
inputs_0&
"gru_cell_1_readvariableop_resource-
)gru_cell_1_matmul_readvariableop_resource/
+gru_cell_1_matmul_1_readvariableop_resource
identity

identity_1?? gru_cell_1/MatMul/ReadVariableOp?"gru_cell_1/MatMul_1/ReadVariableOp?gru_cell_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_1/ReadVariableOp?
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_1/unstack?
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_1/MatMul/ReadVariableOp?
gru_cell_1/MatMulMatMulstrided_slice_2:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul?
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAddf
gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_1/Const?
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split/split_dim?
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split?
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_1/MatMul_1/ReadVariableOp?
gru_cell_1/MatMul_1MatMulzeros:output:0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul_1?
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAdd_1}
gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_1/Const_1?
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split_1/split_dim?
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const_1:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split_1?
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid?
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_1?
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid_1?
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul?
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Tanh?
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_1i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_1/sub/x?
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/sub?
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_2?
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_49622*
condR
while_cond_49621*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identitywhile:output:4!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:???????????????????:::2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
*
__inference_<lambda>_50140
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?

?
F__inference_embedding_1_layer_call_and_return_conditional_losses_49222

inputs	,
(embedding_lookup_readvariableop_resource
identity??embedding_lookup/ReadVariableOp?
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*
_output_shapes
:	C?*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*,
_output_shapes
:?????????d?2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*,
_output_shapes
:?????????d?2
embedding_lookup/Identity?
IdentityIdentity"embedding_lookup/Identity:output:0 ^embedding_lookup/ReadVariableOp*
T0*,
_output_shapes
:?????????d?2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:2B
embedding_lookup/ReadVariableOpembedding_lookup/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?a
?
!my_model_1_gru_1_while_body_41473>
:my_model_1_gru_1_while_my_model_1_gru_1_while_loop_counterD
@my_model_1_gru_1_while_my_model_1_gru_1_while_maximum_iterations&
"my_model_1_gru_1_while_placeholder(
$my_model_1_gru_1_while_placeholder_1(
$my_model_1_gru_1_while_placeholder_2;
7my_model_1_gru_1_while_my_model_1_gru_1_strided_slice_0y
umy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0?
;my_model_1_gru_1_while_gru_cell_1_readvariableop_resource_0F
Bmy_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0H
Dmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0#
my_model_1_gru_1_while_identity%
!my_model_1_gru_1_while_identity_1%
!my_model_1_gru_1_while_identity_2%
!my_model_1_gru_1_while_identity_3%
!my_model_1_gru_1_while_identity_49
5my_model_1_gru_1_while_my_model_1_gru_1_strided_slicew
smy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensor=
9my_model_1_gru_1_while_gru_cell_1_readvariableop_resourceD
@my_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resourceF
Bmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource??7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp?9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?0my_model_1/gru_1/while/gru_cell_1/ReadVariableOp?
Hmy_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2J
Hmy_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
:my_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemumy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0"my_model_1_gru_1_while_placeholderQmy_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02<
:my_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem?
0my_model_1/gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp;my_model_1_gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0my_model_1/gru_1/while/gru_cell_1/ReadVariableOp?
)my_model_1/gru_1/while/gru_cell_1/unstackUnpack8my_model_1/gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2+
)my_model_1/gru_1/while/gru_cell_1/unstack?
7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOpBmy_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype029
7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp?
(my_model_1/gru_1/while/gru_cell_1/MatMulMatMulAmy_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0?my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(my_model_1/gru_1/while/gru_cell_1/MatMul?
)my_model_1/gru_1/while/gru_cell_1/BiasAddBiasAdd2my_model_1/gru_1/while/gru_cell_1/MatMul:product:02my_model_1/gru_1/while/gru_cell_1/unstack:output:0*
T0*
_output_shapes
:	?2+
)my_model_1/gru_1/while/gru_cell_1/BiasAdd?
'my_model_1/gru_1/while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'my_model_1/gru_1/while/gru_cell_1/Const?
1my_model_1/gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1my_model_1/gru_1/while/gru_cell_1/split/split_dim?
'my_model_1/gru_1/while/gru_cell_1/splitSplit:my_model_1/gru_1/while/gru_cell_1/split/split_dim:output:02my_model_1/gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2)
'my_model_1/gru_1/while/gru_cell_1/split?
9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOpDmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02;
9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?
*my_model_1/gru_1/while/gru_cell_1/MatMul_1MatMul$my_model_1_gru_1_while_placeholder_2Amy_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*my_model_1/gru_1/while/gru_cell_1/MatMul_1?
+my_model_1/gru_1/while/gru_cell_1/BiasAdd_1BiasAdd4my_model_1/gru_1/while/gru_cell_1/MatMul_1:product:02my_model_1/gru_1/while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2-
+my_model_1/gru_1/while/gru_cell_1/BiasAdd_1?
)my_model_1/gru_1/while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2+
)my_model_1/gru_1/while/gru_cell_1/Const_1?
3my_model_1/gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????25
3my_model_1/gru_1/while/gru_cell_1/split_1/split_dim?
)my_model_1/gru_1/while/gru_cell_1/split_1SplitV4my_model_1/gru_1/while/gru_cell_1/BiasAdd_1:output:02my_model_1/gru_1/while/gru_cell_1/Const_1:output:0<my_model_1/gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2+
)my_model_1/gru_1/while/gru_cell_1/split_1?
%my_model_1/gru_1/while/gru_cell_1/addAddV20my_model_1/gru_1/while/gru_cell_1/split:output:02my_model_1/gru_1/while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2'
%my_model_1/gru_1/while/gru_cell_1/add?
)my_model_1/gru_1/while/gru_cell_1/SigmoidSigmoid)my_model_1/gru_1/while/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2+
)my_model_1/gru_1/while/gru_cell_1/Sigmoid?
'my_model_1/gru_1/while/gru_cell_1/add_1AddV20my_model_1/gru_1/while/gru_cell_1/split:output:12my_model_1/gru_1/while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2)
'my_model_1/gru_1/while/gru_cell_1/add_1?
+my_model_1/gru_1/while/gru_cell_1/Sigmoid_1Sigmoid+my_model_1/gru_1/while/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2-
+my_model_1/gru_1/while/gru_cell_1/Sigmoid_1?
%my_model_1/gru_1/while/gru_cell_1/mulMul/my_model_1/gru_1/while/gru_cell_1/Sigmoid_1:y:02my_model_1/gru_1/while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2'
%my_model_1/gru_1/while/gru_cell_1/mul?
'my_model_1/gru_1/while/gru_cell_1/add_2AddV20my_model_1/gru_1/while/gru_cell_1/split:output:2)my_model_1/gru_1/while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2)
'my_model_1/gru_1/while/gru_cell_1/add_2?
&my_model_1/gru_1/while/gru_cell_1/TanhTanh+my_model_1/gru_1/while/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2(
&my_model_1/gru_1/while/gru_cell_1/Tanh?
'my_model_1/gru_1/while/gru_cell_1/mul_1Mul-my_model_1/gru_1/while/gru_cell_1/Sigmoid:y:0$my_model_1_gru_1_while_placeholder_2*
T0*(
_output_shapes
:??????????2)
'my_model_1/gru_1/while/gru_cell_1/mul_1?
'my_model_1/gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'my_model_1/gru_1/while/gru_cell_1/sub/x?
%my_model_1/gru_1/while/gru_cell_1/subSub0my_model_1/gru_1/while/gru_cell_1/sub/x:output:0-my_model_1/gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2'
%my_model_1/gru_1/while/gru_cell_1/sub?
'my_model_1/gru_1/while/gru_cell_1/mul_2Mul)my_model_1/gru_1/while/gru_cell_1/sub:z:0*my_model_1/gru_1/while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2)
'my_model_1/gru_1/while/gru_cell_1/mul_2?
'my_model_1/gru_1/while/gru_cell_1/add_3AddV2+my_model_1/gru_1/while/gru_cell_1/mul_1:z:0+my_model_1/gru_1/while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2)
'my_model_1/gru_1/while/gru_cell_1/add_3?
;my_model_1/gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$my_model_1_gru_1_while_placeholder_1"my_model_1_gru_1_while_placeholder+my_model_1/gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02=
;my_model_1/gru_1/while/TensorArrayV2Write/TensorListSetItem~
my_model_1/gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
my_model_1/gru_1/while/add/y?
my_model_1/gru_1/while/addAddV2"my_model_1_gru_1_while_placeholder%my_model_1/gru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
my_model_1/gru_1/while/add?
my_model_1/gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2 
my_model_1/gru_1/while/add_1/y?
my_model_1/gru_1/while/add_1AddV2:my_model_1_gru_1_while_my_model_1_gru_1_while_loop_counter'my_model_1/gru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
my_model_1/gru_1/while/add_1?
my_model_1/gru_1/while/IdentityIdentity my_model_1/gru_1/while/add_1:z:08^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2!
my_model_1/gru_1/while/Identity?
!my_model_1/gru_1/while/Identity_1Identity@my_model_1_gru_1_while_my_model_1_gru_1_while_maximum_iterations8^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!my_model_1/gru_1/while/Identity_1?
!my_model_1/gru_1/while/Identity_2Identitymy_model_1/gru_1/while/add:z:08^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!my_model_1/gru_1/while/Identity_2?
!my_model_1/gru_1/while/Identity_3IdentityKmy_model_1/gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!my_model_1/gru_1/while/Identity_3?
!my_model_1/gru_1/while/Identity_4Identity+my_model_1/gru_1/while/gru_cell_1/add_3:z:08^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2#
!my_model_1/gru_1/while/Identity_4"?
Bmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resourceDmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"?
@my_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resourceBmy_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"x
9my_model_1_gru_1_while_gru_cell_1_readvariableop_resource;my_model_1_gru_1_while_gru_cell_1_readvariableop_resource_0"K
my_model_1_gru_1_while_identity(my_model_1/gru_1/while/Identity:output:0"O
!my_model_1_gru_1_while_identity_1*my_model_1/gru_1/while/Identity_1:output:0"O
!my_model_1_gru_1_while_identity_2*my_model_1/gru_1/while/Identity_2:output:0"O
!my_model_1_gru_1_while_identity_3*my_model_1/gru_1/while/Identity_3:output:0"O
!my_model_1_gru_1_while_identity_4*my_model_1/gru_1/while/Identity_4:output:0"p
5my_model_1_gru_1_while_my_model_1_gru_1_strided_slice7my_model_1_gru_1_while_my_model_1_gru_1_strided_slice_0"?
smy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensorumy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2r
7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp2v
9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2d
0my_model_1/gru_1/while/gru_cell_1/ReadVariableOp0my_model_1/gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?`
?
!my_model_1_gru_1_while_body_41213>
:my_model_1_gru_1_while_my_model_1_gru_1_while_loop_counterD
@my_model_1_gru_1_while_my_model_1_gru_1_while_maximum_iterations&
"my_model_1_gru_1_while_placeholder(
$my_model_1_gru_1_while_placeholder_1(
$my_model_1_gru_1_while_placeholder_2;
7my_model_1_gru_1_while_my_model_1_gru_1_strided_slice_0y
umy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0?
;my_model_1_gru_1_while_gru_cell_1_readvariableop_resource_0F
Bmy_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0H
Dmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0#
my_model_1_gru_1_while_identity%
!my_model_1_gru_1_while_identity_1%
!my_model_1_gru_1_while_identity_2%
!my_model_1_gru_1_while_identity_3%
!my_model_1_gru_1_while_identity_49
5my_model_1_gru_1_while_my_model_1_gru_1_strided_slicew
smy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensor=
9my_model_1_gru_1_while_gru_cell_1_readvariableop_resourceD
@my_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resourceF
Bmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource??7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp?9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?0my_model_1/gru_1/while/gru_cell_1/ReadVariableOp?
Hmy_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2J
Hmy_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
:my_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemumy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0"my_model_1_gru_1_while_placeholderQmy_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02<
:my_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem?
0my_model_1/gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp;my_model_1_gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0my_model_1/gru_1/while/gru_cell_1/ReadVariableOp?
)my_model_1/gru_1/while/gru_cell_1/unstackUnpack8my_model_1/gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2+
)my_model_1/gru_1/while/gru_cell_1/unstack?
7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOpBmy_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype029
7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp?
(my_model_1/gru_1/while/gru_cell_1/MatMulMatMulAmy_model_1/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0?my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(my_model_1/gru_1/while/gru_cell_1/MatMul?
)my_model_1/gru_1/while/gru_cell_1/BiasAddBiasAdd2my_model_1/gru_1/while/gru_cell_1/MatMul:product:02my_model_1/gru_1/while/gru_cell_1/unstack:output:0*
T0*
_output_shapes
:	?2+
)my_model_1/gru_1/while/gru_cell_1/BiasAdd?
'my_model_1/gru_1/while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'my_model_1/gru_1/while/gru_cell_1/Const?
1my_model_1/gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1my_model_1/gru_1/while/gru_cell_1/split/split_dim?
'my_model_1/gru_1/while/gru_cell_1/splitSplit:my_model_1/gru_1/while/gru_cell_1/split/split_dim:output:02my_model_1/gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2)
'my_model_1/gru_1/while/gru_cell_1/split?
9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOpDmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02;
9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?
*my_model_1/gru_1/while/gru_cell_1/MatMul_1MatMul$my_model_1_gru_1_while_placeholder_2Amy_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*my_model_1/gru_1/while/gru_cell_1/MatMul_1?
+my_model_1/gru_1/while/gru_cell_1/BiasAdd_1BiasAdd4my_model_1/gru_1/while/gru_cell_1/MatMul_1:product:02my_model_1/gru_1/while/gru_cell_1/unstack:output:1*
T0*
_output_shapes
:	?2-
+my_model_1/gru_1/while/gru_cell_1/BiasAdd_1?
)my_model_1/gru_1/while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2+
)my_model_1/gru_1/while/gru_cell_1/Const_1?
3my_model_1/gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????25
3my_model_1/gru_1/while/gru_cell_1/split_1/split_dim?
)my_model_1/gru_1/while/gru_cell_1/split_1SplitV4my_model_1/gru_1/while/gru_cell_1/BiasAdd_1:output:02my_model_1/gru_1/while/gru_cell_1/Const_1:output:0<my_model_1/gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*5
_output_shapes#
!:	?:	?:	?*
	num_split2+
)my_model_1/gru_1/while/gru_cell_1/split_1?
%my_model_1/gru_1/while/gru_cell_1/addAddV20my_model_1/gru_1/while/gru_cell_1/split:output:02my_model_1/gru_1/while/gru_cell_1/split_1:output:0*
T0*
_output_shapes
:	?2'
%my_model_1/gru_1/while/gru_cell_1/add?
)my_model_1/gru_1/while/gru_cell_1/SigmoidSigmoid)my_model_1/gru_1/while/gru_cell_1/add:z:0*
T0*
_output_shapes
:	?2+
)my_model_1/gru_1/while/gru_cell_1/Sigmoid?
'my_model_1/gru_1/while/gru_cell_1/add_1AddV20my_model_1/gru_1/while/gru_cell_1/split:output:12my_model_1/gru_1/while/gru_cell_1/split_1:output:1*
T0*
_output_shapes
:	?2)
'my_model_1/gru_1/while/gru_cell_1/add_1?
+my_model_1/gru_1/while/gru_cell_1/Sigmoid_1Sigmoid+my_model_1/gru_1/while/gru_cell_1/add_1:z:0*
T0*
_output_shapes
:	?2-
+my_model_1/gru_1/while/gru_cell_1/Sigmoid_1?
%my_model_1/gru_1/while/gru_cell_1/mulMul/my_model_1/gru_1/while/gru_cell_1/Sigmoid_1:y:02my_model_1/gru_1/while/gru_cell_1/split_1:output:2*
T0*
_output_shapes
:	?2'
%my_model_1/gru_1/while/gru_cell_1/mul?
'my_model_1/gru_1/while/gru_cell_1/add_2AddV20my_model_1/gru_1/while/gru_cell_1/split:output:2)my_model_1/gru_1/while/gru_cell_1/mul:z:0*
T0*
_output_shapes
:	?2)
'my_model_1/gru_1/while/gru_cell_1/add_2?
&my_model_1/gru_1/while/gru_cell_1/TanhTanh+my_model_1/gru_1/while/gru_cell_1/add_2:z:0*
T0*
_output_shapes
:	?2(
&my_model_1/gru_1/while/gru_cell_1/Tanh?
'my_model_1/gru_1/while/gru_cell_1/mul_1Mul-my_model_1/gru_1/while/gru_cell_1/Sigmoid:y:0$my_model_1_gru_1_while_placeholder_2*
T0*
_output_shapes
:	?2)
'my_model_1/gru_1/while/gru_cell_1/mul_1?
'my_model_1/gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'my_model_1/gru_1/while/gru_cell_1/sub/x?
%my_model_1/gru_1/while/gru_cell_1/subSub0my_model_1/gru_1/while/gru_cell_1/sub/x:output:0-my_model_1/gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*
_output_shapes
:	?2'
%my_model_1/gru_1/while/gru_cell_1/sub?
'my_model_1/gru_1/while/gru_cell_1/mul_2Mul)my_model_1/gru_1/while/gru_cell_1/sub:z:0*my_model_1/gru_1/while/gru_cell_1/Tanh:y:0*
T0*
_output_shapes
:	?2)
'my_model_1/gru_1/while/gru_cell_1/mul_2?
'my_model_1/gru_1/while/gru_cell_1/add_3AddV2+my_model_1/gru_1/while/gru_cell_1/mul_1:z:0+my_model_1/gru_1/while/gru_cell_1/mul_2:z:0*
T0*
_output_shapes
:	?2)
'my_model_1/gru_1/while/gru_cell_1/add_3?
;my_model_1/gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$my_model_1_gru_1_while_placeholder_1"my_model_1_gru_1_while_placeholder+my_model_1/gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02=
;my_model_1/gru_1/while/TensorArrayV2Write/TensorListSetItem~
my_model_1/gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
my_model_1/gru_1/while/add/y?
my_model_1/gru_1/while/addAddV2"my_model_1_gru_1_while_placeholder%my_model_1/gru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
my_model_1/gru_1/while/add?
my_model_1/gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2 
my_model_1/gru_1/while/add_1/y?
my_model_1/gru_1/while/add_1AddV2:my_model_1_gru_1_while_my_model_1_gru_1_while_loop_counter'my_model_1/gru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
my_model_1/gru_1/while/add_1?
my_model_1/gru_1/while/IdentityIdentity my_model_1/gru_1/while/add_1:z:08^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2!
my_model_1/gru_1/while/Identity?
!my_model_1/gru_1/while/Identity_1Identity@my_model_1_gru_1_while_my_model_1_gru_1_while_maximum_iterations8^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!my_model_1/gru_1/while/Identity_1?
!my_model_1/gru_1/while/Identity_2Identitymy_model_1/gru_1/while/add:z:08^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!my_model_1/gru_1/while/Identity_2?
!my_model_1/gru_1/while/Identity_3IdentityKmy_model_1/gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!my_model_1/gru_1/while/Identity_3?
!my_model_1/gru_1/while/Identity_4Identity+my_model_1/gru_1/while/gru_cell_1/add_3:z:08^my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:^my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp1^my_model_1/gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
:	?2#
!my_model_1/gru_1/while/Identity_4"?
Bmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resourceDmy_model_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"?
@my_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resourceBmy_model_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"x
9my_model_1_gru_1_while_gru_cell_1_readvariableop_resource;my_model_1_gru_1_while_gru_cell_1_readvariableop_resource_0"K
my_model_1_gru_1_while_identity(my_model_1/gru_1/while/Identity:output:0"O
!my_model_1_gru_1_while_identity_1*my_model_1/gru_1/while/Identity_1:output:0"O
!my_model_1_gru_1_while_identity_2*my_model_1/gru_1/while/Identity_2:output:0"O
!my_model_1_gru_1_while_identity_3*my_model_1/gru_1/while/Identity_3:output:0"O
!my_model_1_gru_1_while_identity_4*my_model_1/gru_1/while/Identity_4:output:0"p
5my_model_1_gru_1_while_my_model_1_gru_1_strided_slice7my_model_1_gru_1_while_my_model_1_gru_1_strided_slice_0"?
smy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensorumy_model_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_my_model_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0*6
_input_shapes%
#: : : : :	?: : :::2r
7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp7my_model_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp2v
9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp9my_model_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2d
0my_model_1/gru_1/while/gru_cell_1/ReadVariableOp0my_model_1/gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_50008

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:??????????:??????????:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?	
?
%__inference_gru_1_layer_call_fn_49886
inputs_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:???????????????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_476402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?	
?
%__inference_gru_1_layer_call_fn_49553

inputs
initial_state_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinitial_state_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_481052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????d?2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*K
_input_shapes:
8:?????????d?:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:YU
(
_output_shapes
:??????????
)
_user_specified_nameinitial_state/0
?
?
while_cond_47865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_47865___redundant_placeholder03
/while_while_cond_47865___redundant_placeholder13
/while_while_cond_47865___redundant_placeholder23
/while_while_cond_47865___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
q
+__inference_embedding_1_layer_call_fn_49229

inputs	
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_477852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????d?2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_47314

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:??????????:??????????:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
??
?

#__inference_generate_one_step_41604

inputs`
\string_lookup_2_string_lookup_2_index_table_lookup_table_find_lookuptablefindv2_table_handlea
]string_lookup_2_string_lookup_2_index_table_lookup_table_find_lookuptablefindv2_default_value	C
?my_model_1_embedding_1_embedding_lookup_readvariableop_resource7
3my_model_1_gru_1_gru_cell_1_readvariableop_resource>
:my_model_1_gru_1_gru_cell_1_matmul_readvariableop_resource@
<my_model_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource8
4my_model_1_dense_1_tensordot_readvariableop_resource6
2my_model_1_dense_1_biasadd_readvariableop_resource	
add_y`
\string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handlea
]string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value
identity

identity_1??)my_model_1/dense_1/BiasAdd/ReadVariableOp?+my_model_1/dense_1/Tensordot/ReadVariableOp?6my_model_1/embedding_1/embedding_lookup/ReadVariableOp?1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp?3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp?*my_model_1/gru_1/gru_cell_1/ReadVariableOp?my_model_1/gru_1/while?Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2?Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
UnicodeSplit/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
UnicodeSplit/Reshape/shape?
UnicodeSplit/ReshapeReshapeinputs#UnicodeSplit/Reshape/shape:output:0*
T0*
_output_shapes
:2
UnicodeSplit/Reshape?
UnicodeSplit/UnicodeDecodeUnicodeDecodeUnicodeSplit/Reshape:output:0*)
_output_shapes
::?????????*
input_encodingUTF-82
UnicodeSplit/UnicodeDecode?
=UnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2?
=UnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims/dim?
9UnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims
ExpandDims(UnicodeSplit/UnicodeDecode:char_values:0FUnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2;
9UnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/ShapeShapeBUnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2A
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape?
MUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2O
MUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_1?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_2?
GUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_sliceStridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0VUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_1:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2I
GUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_1?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_2?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1StridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_1:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_1?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_2?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2StridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_1:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2?
=UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/mulMulRUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1:output:0RUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: 2?
=UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/mul?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_1?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_2?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3StridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_1:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/values_0PackAUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/mul:z:0*
N*
T0	*
_output_shapes
:2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/values_0?
EUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2G
EUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/axis?
@UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concatConcatV2RUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/values_0:output:0RUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3:output:0NUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/axis:output:0*
N*
T0	*
_output_shapes
:2B
@UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat?
AUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/ReshapeReshapeBUnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims:output:0IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat:output:0*
T0*
Tshape0	*#
_output_shapes
:?????????2C
AUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Reshape?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_1?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_2?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4StridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_1:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Const?
ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/ShapeShapeJUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Reshape:output:0*
T0*
_output_shapes
:*
out_type0	2\
ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/Shape?
hUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2j
hUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack?
jUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2l
jUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1?
jUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2l
jUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2?
bUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_sliceStridedSlicecUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/Shape:output:0qUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack:output:0sUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1:output:0sUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2d
bUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice?
{UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2}
{UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y?
yUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV2RUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4:output:0?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: 2{
yUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/CastCast?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1Cast?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1?
{UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRange?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast:y:0}UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2}
{UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range?
yUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMul?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:0HUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Const:output:0*
T0	*#
_output_shapes
:?????????2{
yUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul?
DUnicodeSplit/UnicodeEncode/UnicodeEncode/UnicodeEncode/UnicodeEncodeUnicodeEncodeJUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Reshape:output:0}UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0*#
_output_shapes
:?????????*
output_encodingUTF-82F
DUnicodeSplit/UnicodeEncode/UnicodeEncode/UnicodeEncode/UnicodeEncode?
Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2\string_lookup_2_string_lookup_2_index_table_lookup_table_find_lookuptablefindv2_table_handleMUnicodeSplit/UnicodeEncode/UnicodeEncode/UnicodeEncode/UnicodeEncode:output:0]string_lookup_2_string_lookup_2_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2Q
Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2d
!string_lookup_2/assert_equal/NoOpNoOp*
_output_shapes
 2#
!string_lookup_2/assert_equal/NoOp?
string_lookup_2/IdentityIdentityXstring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_2/Identity?
string_lookup_2/Identity_1Identity'UnicodeSplit/UnicodeDecode:row_splits:0*
T0	*
_output_shapes
:2
string_lookup_2/Identity_1n
RaggedToTensor/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
RaggedToTensor/zerosw
RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2
RaggedToTensor/Const?
#RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorRaggedToTensor/Const:output:0!string_lookup_2/Identity:output:0RaggedToTensor/zeros:output:0#string_lookup_2/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2%
#RaggedToTensor/RaggedTensorToTensor?
6my_model_1/embedding_1/embedding_lookup/ReadVariableOpReadVariableOp?my_model_1_embedding_1_embedding_lookup_readvariableop_resource*
_output_shapes
:	C?*
dtype028
6my_model_1/embedding_1/embedding_lookup/ReadVariableOp?
,my_model_1/embedding_1/embedding_lookup/axisConst*I
_class?
=;loc:@my_model_1/embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2.
,my_model_1/embedding_1/embedding_lookup/axis?
'my_model_1/embedding_1/embedding_lookupGatherV2>my_model_1/embedding_1/embedding_lookup/ReadVariableOp:value:0,RaggedToTensor/RaggedTensorToTensor:result:05my_model_1/embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*I
_class?
=;loc:@my_model_1/embedding_1/embedding_lookup/ReadVariableOp*,
_output_shapes
:??????????2)
'my_model_1/embedding_1/embedding_lookup?
0my_model_1/embedding_1/embedding_lookup/IdentityIdentity0my_model_1/embedding_1/embedding_lookup:output:0*
T0*,
_output_shapes
:??????????22
0my_model_1/embedding_1/embedding_lookup/Identity?
my_model_1/ShapeShape9my_model_1/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:2
my_model_1/Shape?
my_model_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
my_model_1/strided_slice/stack?
 my_model_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 my_model_1/strided_slice/stack_1?
 my_model_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 my_model_1/strided_slice/stack_2?
my_model_1/strided_sliceStridedSlicemy_model_1/Shape:output:0'my_model_1/strided_slice/stack:output:0)my_model_1/strided_slice/stack_1:output:0)my_model_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
my_model_1/strided_slices
my_model_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
my_model_1/zeros/mul/y?
my_model_1/zeros/mulMul!my_model_1/strided_slice:output:0my_model_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
my_model_1/zeros/mulu
my_model_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
my_model_1/zeros/Less/y?
my_model_1/zeros/LessLessmy_model_1/zeros/mul:z:0 my_model_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
my_model_1/zeros/Lessy
my_model_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
my_model_1/zeros/packed/1?
my_model_1/zeros/packedPack!my_model_1/strided_slice:output:0"my_model_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
my_model_1/zeros/packedu
my_model_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
my_model_1/zeros/Const?
my_model_1/zerosFill my_model_1/zeros/packed:output:0my_model_1/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
my_model_1/zeros?
my_model_1/gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2!
my_model_1/gru_1/transpose/perm?
my_model_1/gru_1/transpose	Transpose9my_model_1/embedding_1/embedding_lookup/Identity:output:0(my_model_1/gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
my_model_1/gru_1/transpose~
my_model_1/gru_1/ShapeShapemy_model_1/gru_1/transpose:y:0*
T0*
_output_shapes
:2
my_model_1/gru_1/Shape?
$my_model_1/gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$my_model_1/gru_1/strided_slice/stack?
&my_model_1/gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&my_model_1/gru_1/strided_slice/stack_1?
&my_model_1/gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&my_model_1/gru_1/strided_slice/stack_2?
my_model_1/gru_1/strided_sliceStridedSlicemy_model_1/gru_1/Shape:output:0-my_model_1/gru_1/strided_slice/stack:output:0/my_model_1/gru_1/strided_slice/stack_1:output:0/my_model_1/gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
my_model_1/gru_1/strided_slice?
,my_model_1/gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,my_model_1/gru_1/TensorArrayV2/element_shape?
my_model_1/gru_1/TensorArrayV2TensorListReserve5my_model_1/gru_1/TensorArrayV2/element_shape:output:0'my_model_1/gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02 
my_model_1/gru_1/TensorArrayV2?
Fmy_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2H
Fmy_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
8my_model_1/gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormy_model_1/gru_1/transpose:y:0Omy_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02:
8my_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor?
&my_model_1/gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&my_model_1/gru_1/strided_slice_1/stack?
(my_model_1/gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(my_model_1/gru_1/strided_slice_1/stack_1?
(my_model_1/gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(my_model_1/gru_1/strided_slice_1/stack_2?
 my_model_1/gru_1/strided_slice_1StridedSlicemy_model_1/gru_1/transpose:y:0/my_model_1/gru_1/strided_slice_1/stack:output:01my_model_1/gru_1/strided_slice_1/stack_1:output:01my_model_1/gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2"
 my_model_1/gru_1/strided_slice_1?
*my_model_1/gru_1/gru_cell_1/ReadVariableOpReadVariableOp3my_model_1_gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*my_model_1/gru_1/gru_cell_1/ReadVariableOp?
#my_model_1/gru_1/gru_cell_1/unstackUnpack2my_model_1/gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2%
#my_model_1/gru_1/gru_cell_1/unstack?
1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp:my_model_1_gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp?
"my_model_1/gru_1/gru_cell_1/MatMulMatMul)my_model_1/gru_1/strided_slice_1:output:09my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"my_model_1/gru_1/gru_cell_1/MatMul?
#my_model_1/gru_1/gru_cell_1/BiasAddBiasAdd,my_model_1/gru_1/gru_cell_1/MatMul:product:0,my_model_1/gru_1/gru_cell_1/unstack:output:0*
T0*
_output_shapes
:	?2%
#my_model_1/gru_1/gru_cell_1/BiasAdd?
!my_model_1/gru_1/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2#
!my_model_1/gru_1/gru_cell_1/Const?
+my_model_1/gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+my_model_1/gru_1/gru_cell_1/split/split_dim?
!my_model_1/gru_1/gru_cell_1/splitSplit4my_model_1/gru_1/gru_cell_1/split/split_dim:output:0,my_model_1/gru_1/gru_cell_1/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2#
!my_model_1/gru_1/gru_cell_1/split?
3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp<my_model_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp?
$my_model_1/gru_1/gru_cell_1/MatMul_1MatMulmy_model_1/zeros:output:0;my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$my_model_1/gru_1/gru_cell_1/MatMul_1?
%my_model_1/gru_1/gru_cell_1/BiasAdd_1BiasAdd.my_model_1/gru_1/gru_cell_1/MatMul_1:product:0,my_model_1/gru_1/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2'
%my_model_1/gru_1/gru_cell_1/BiasAdd_1?
#my_model_1/gru_1/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2%
#my_model_1/gru_1/gru_cell_1/Const_1?
-my_model_1/gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-my_model_1/gru_1/gru_cell_1/split_1/split_dim?
#my_model_1/gru_1/gru_cell_1/split_1SplitV.my_model_1/gru_1/gru_cell_1/BiasAdd_1:output:0,my_model_1/gru_1/gru_cell_1/Const_1:output:06my_model_1/gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2%
#my_model_1/gru_1/gru_cell_1/split_1?
my_model_1/gru_1/gru_cell_1/addAddV2*my_model_1/gru_1/gru_cell_1/split:output:0,my_model_1/gru_1/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2!
my_model_1/gru_1/gru_cell_1/add?
#my_model_1/gru_1/gru_cell_1/SigmoidSigmoid#my_model_1/gru_1/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2%
#my_model_1/gru_1/gru_cell_1/Sigmoid?
!my_model_1/gru_1/gru_cell_1/add_1AddV2*my_model_1/gru_1/gru_cell_1/split:output:1,my_model_1/gru_1/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2#
!my_model_1/gru_1/gru_cell_1/add_1?
%my_model_1/gru_1/gru_cell_1/Sigmoid_1Sigmoid%my_model_1/gru_1/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2'
%my_model_1/gru_1/gru_cell_1/Sigmoid_1?
my_model_1/gru_1/gru_cell_1/mulMul)my_model_1/gru_1/gru_cell_1/Sigmoid_1:y:0,my_model_1/gru_1/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2!
my_model_1/gru_1/gru_cell_1/mul?
!my_model_1/gru_1/gru_cell_1/add_2AddV2*my_model_1/gru_1/gru_cell_1/split:output:2#my_model_1/gru_1/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2#
!my_model_1/gru_1/gru_cell_1/add_2?
 my_model_1/gru_1/gru_cell_1/TanhTanh%my_model_1/gru_1/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2"
 my_model_1/gru_1/gru_cell_1/Tanh?
!my_model_1/gru_1/gru_cell_1/mul_1Mul'my_model_1/gru_1/gru_cell_1/Sigmoid:y:0my_model_1/zeros:output:0*
T0*(
_output_shapes
:??????????2#
!my_model_1/gru_1/gru_cell_1/mul_1?
!my_model_1/gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!my_model_1/gru_1/gru_cell_1/sub/x?
my_model_1/gru_1/gru_cell_1/subSub*my_model_1/gru_1/gru_cell_1/sub/x:output:0'my_model_1/gru_1/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2!
my_model_1/gru_1/gru_cell_1/sub?
!my_model_1/gru_1/gru_cell_1/mul_2Mul#my_model_1/gru_1/gru_cell_1/sub:z:0$my_model_1/gru_1/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2#
!my_model_1/gru_1/gru_cell_1/mul_2?
!my_model_1/gru_1/gru_cell_1/add_3AddV2%my_model_1/gru_1/gru_cell_1/mul_1:z:0%my_model_1/gru_1/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2#
!my_model_1/gru_1/gru_cell_1/add_3?
.my_model_1/gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   20
.my_model_1/gru_1/TensorArrayV2_1/element_shape?
 my_model_1/gru_1/TensorArrayV2_1TensorListReserve7my_model_1/gru_1/TensorArrayV2_1/element_shape:output:0'my_model_1/gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02"
 my_model_1/gru_1/TensorArrayV2_1p
my_model_1/gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
my_model_1/gru_1/time?
)my_model_1/gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)my_model_1/gru_1/while/maximum_iterations?
#my_model_1/gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2%
#my_model_1/gru_1/while/loop_counter?
my_model_1/gru_1/whileWhile,my_model_1/gru_1/while/loop_counter:output:02my_model_1/gru_1/while/maximum_iterations:output:0my_model_1/gru_1/time:output:0)my_model_1/gru_1/TensorArrayV2_1:handle:0my_model_1/zeros:output:0'my_model_1/gru_1/strided_slice:output:0Hmy_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:03my_model_1_gru_1_gru_cell_1_readvariableop_resource:my_model_1_gru_1_gru_cell_1_matmul_readvariableop_resource<my_model_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*-
body%R#
!my_model_1_gru_1_while_body_41473*-
cond%R#
!my_model_1_gru_1_while_cond_41472*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
my_model_1/gru_1/while?
Amy_model_1/gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2C
Amy_model_1/gru_1/TensorArrayV2Stack/TensorListStack/element_shape?
3my_model_1/gru_1/TensorArrayV2Stack/TensorListStackTensorListStackmy_model_1/gru_1/while:output:3Jmy_model_1/gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype025
3my_model_1/gru_1/TensorArrayV2Stack/TensorListStack?
&my_model_1/gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2(
&my_model_1/gru_1/strided_slice_2/stack?
(my_model_1/gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(my_model_1/gru_1/strided_slice_2/stack_1?
(my_model_1/gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(my_model_1/gru_1/strided_slice_2/stack_2?
 my_model_1/gru_1/strided_slice_2StridedSlice<my_model_1/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0/my_model_1/gru_1/strided_slice_2/stack:output:01my_model_1/gru_1/strided_slice_2/stack_1:output:01my_model_1/gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2"
 my_model_1/gru_1/strided_slice_2?
!my_model_1/gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!my_model_1/gru_1/transpose_1/perm?
my_model_1/gru_1/transpose_1	Transpose<my_model_1/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0*my_model_1/gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
my_model_1/gru_1/transpose_1?
my_model_1/gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
my_model_1/gru_1/runtime?
+my_model_1/dense_1/Tensordot/ReadVariableOpReadVariableOp4my_model_1_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	?C*
dtype02-
+my_model_1/dense_1/Tensordot/ReadVariableOp?
!my_model_1/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!my_model_1/dense_1/Tensordot/axes?
!my_model_1/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!my_model_1/dense_1/Tensordot/free?
"my_model_1/dense_1/Tensordot/ShapeShape my_model_1/gru_1/transpose_1:y:0*
T0*
_output_shapes
:2$
"my_model_1/dense_1/Tensordot/Shape?
*my_model_1/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*my_model_1/dense_1/Tensordot/GatherV2/axis?
%my_model_1/dense_1/Tensordot/GatherV2GatherV2+my_model_1/dense_1/Tensordot/Shape:output:0*my_model_1/dense_1/Tensordot/free:output:03my_model_1/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%my_model_1/dense_1/Tensordot/GatherV2?
,my_model_1/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,my_model_1/dense_1/Tensordot/GatherV2_1/axis?
'my_model_1/dense_1/Tensordot/GatherV2_1GatherV2+my_model_1/dense_1/Tensordot/Shape:output:0*my_model_1/dense_1/Tensordot/axes:output:05my_model_1/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'my_model_1/dense_1/Tensordot/GatherV2_1?
"my_model_1/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"my_model_1/dense_1/Tensordot/Const?
!my_model_1/dense_1/Tensordot/ProdProd.my_model_1/dense_1/Tensordot/GatherV2:output:0+my_model_1/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!my_model_1/dense_1/Tensordot/Prod?
$my_model_1/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$my_model_1/dense_1/Tensordot/Const_1?
#my_model_1/dense_1/Tensordot/Prod_1Prod0my_model_1/dense_1/Tensordot/GatherV2_1:output:0-my_model_1/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#my_model_1/dense_1/Tensordot/Prod_1?
(my_model_1/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(my_model_1/dense_1/Tensordot/concat/axis?
#my_model_1/dense_1/Tensordot/concatConcatV2*my_model_1/dense_1/Tensordot/free:output:0*my_model_1/dense_1/Tensordot/axes:output:01my_model_1/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#my_model_1/dense_1/Tensordot/concat?
"my_model_1/dense_1/Tensordot/stackPack*my_model_1/dense_1/Tensordot/Prod:output:0,my_model_1/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"my_model_1/dense_1/Tensordot/stack?
&my_model_1/dense_1/Tensordot/transpose	Transpose my_model_1/gru_1/transpose_1:y:0,my_model_1/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2(
&my_model_1/dense_1/Tensordot/transpose?
$my_model_1/dense_1/Tensordot/ReshapeReshape*my_model_1/dense_1/Tensordot/transpose:y:0+my_model_1/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2&
$my_model_1/dense_1/Tensordot/Reshape?
#my_model_1/dense_1/Tensordot/MatMulMatMul-my_model_1/dense_1/Tensordot/Reshape:output:03my_model_1/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2%
#my_model_1/dense_1/Tensordot/MatMul?
$my_model_1/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:C2&
$my_model_1/dense_1/Tensordot/Const_2?
*my_model_1/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*my_model_1/dense_1/Tensordot/concat_1/axis?
%my_model_1/dense_1/Tensordot/concat_1ConcatV2.my_model_1/dense_1/Tensordot/GatherV2:output:0-my_model_1/dense_1/Tensordot/Const_2:output:03my_model_1/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%my_model_1/dense_1/Tensordot/concat_1?
my_model_1/dense_1/TensordotReshape-my_model_1/dense_1/Tensordot/MatMul:product:0.my_model_1/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????C2
my_model_1/dense_1/Tensordot?
)my_model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp2my_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02+
)my_model_1/dense_1/BiasAdd/ReadVariableOp?
my_model_1/dense_1/BiasAddBiasAdd%my_model_1/dense_1/Tensordot:output:01my_model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????C2
my_model_1/dense_1/BiasAdd
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1?
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2?
strided_sliceStridedSlice#my_model_1/dense_1/BiasAdd:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:C*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
	truediv/yr
truedivRealDivstrided_slice:output:0truediv/y:output:0*
T0*
_output_shapes

:C2	
truedivP
addAddV2truediv:z:0add_y*
T0*
_output_shapes

:C2
add?
#categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :2%
#categorical/Multinomial/num_samples?
categorical/MultinomialMultinomialadd:z:0,categorical/Multinomial/num_samples:output:0*
T0*
_output_shapes

:2
categorical/Multinomial?
SqueezeSqueeze categorical/Multinomial:output:0*
T0	*
_output_shapes
:*
squeeze_dims

?????????2	
Squeeze?
Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2\string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handleSqueeze:output:0]string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0*
_output_shapes
:2Q
Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
IdentityIdentityXstring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*^my_model_1/dense_1/BiasAdd/ReadVariableOp,^my_model_1/dense_1/Tensordot/ReadVariableOp7^my_model_1/embedding_1/embedding_lookup/ReadVariableOp2^my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp4^my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp+^my_model_1/gru_1/gru_cell_1/ReadVariableOp^my_model_1/gru_1/whileP^string_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2P^string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*
_output_shapes
:2

Identity?

Identity_1Identitymy_model_1/gru_1/while:output:4*^my_model_1/dense_1/BiasAdd/ReadVariableOp,^my_model_1/dense_1/Tensordot/ReadVariableOp7^my_model_1/embedding_1/embedding_lookup/ReadVariableOp2^my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp4^my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp+^my_model_1/gru_1/gru_cell_1/ReadVariableOp^my_model_1/gru_1/whileP^string_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2P^string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*C
_input_shapes2
0::: :::::::C:: 2V
)my_model_1/dense_1/BiasAdd/ReadVariableOp)my_model_1/dense_1/BiasAdd/ReadVariableOp2Z
+my_model_1/dense_1/Tensordot/ReadVariableOp+my_model_1/dense_1/Tensordot/ReadVariableOp2p
6my_model_1/embedding_1/embedding_lookup/ReadVariableOp6my_model_1/embedding_1/embedding_lookup/ReadVariableOp2f
1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp2j
3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp2X
*my_model_1/gru_1/gru_cell_1/ReadVariableOp*my_model_1/gru_1/gru_cell_1/ReadVariableOp20
my_model_1/gru_1/whilemy_model_1/gru_1/while2?
Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV22?
Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:B >

_output_shapes
:
 
_user_specified_nameinputs:

_output_shapes
: : 	

_output_shapes
:C:

_output_shapes
: 
?
?
E__inference_my_model_1_layer_call_and_return_conditional_losses_48258

inputs	
embedding_1_48228
gru_1_48244
gru_1_48246
gru_1_48248
dense_1_48252
dense_1_48254
identity??dense_1/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?gru_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_48228*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_477852%
#embedding_1/StatefulPartitionedCallj
ShapeShape,embedding_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
gru_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0zeros:output:0gru_1_48244gru_1_48246gru_1_48248*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_479572
gru_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_1_48252dense_1_48254*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dC*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_481722!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_49433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_49433___redundant_placeholder03
/while_while_cond_49433___redundant_placeholder13
/while_while_cond_49433___redundant_placeholder23
/while_while_cond_49433___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?G
?
while_body_49286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_1_readvariableop_resource_05
1while_gru_cell_1_matmul_readvariableop_resource_07
3while_gru_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_1_readvariableop_resource3
/while_gru_cell_1_matmul_readvariableop_resource5
1while_gru_cell_1_matmul_1_readvariableop_resource??&while/gru_cell_1/MatMul/ReadVariableOp?(while/gru_cell_1/MatMul_1/ReadVariableOp?while/gru_cell_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_1/ReadVariableOp?
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_1/unstack?
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_1/MatMul/ReadVariableOp?
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul?
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAddr
while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_1/Const?
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_1/split/split_dim?
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split?
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_1/MatMul_1/ReadVariableOp?
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul_1?
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAdd_1?
while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_1/Const_1?
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_1/split_1/split_dim?
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0!while/gru_cell_1/Const_1:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split_1?
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add?
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid?
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_1?
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid_1?
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul?
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_2?
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Tanh?
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_1u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_1/sub/x?
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/sub?
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_2?
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
??
?
E__inference_my_model_1_layer_call_and_return_conditional_losses_49179

inputs	8
4embedding_1_embedding_lookup_readvariableop_resource,
(gru_1_gru_cell_1_readvariableop_resource3
/gru_1_gru_cell_1_matmul_readvariableop_resource5
1gru_1_gru_cell_1_matmul_1_readvariableop_resource-
)dense_1_tensordot_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?+embedding_1/embedding_lookup/ReadVariableOp?&gru_1/gru_cell_1/MatMul/ReadVariableOp?(gru_1/gru_cell_1/MatMul_1/ReadVariableOp?gru_1/gru_cell_1/ReadVariableOp?gru_1/while?
+embedding_1/embedding_lookup/ReadVariableOpReadVariableOp4embedding_1_embedding_lookup_readvariableop_resource*
_output_shapes
:	C?*
dtype02-
+embedding_1/embedding_lookup/ReadVariableOp?
!embedding_1/embedding_lookup/axisConst*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_1/embedding_lookup/axis?
embedding_1/embedding_lookupGatherV23embedding_1/embedding_lookup/ReadVariableOp:value:0inputs*embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*,
_output_shapes
:?????????d?2
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*,
_output_shapes
:?????????d?2'
%embedding_1/embedding_lookup/Identityl
ShapeShape.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose/perm?
gru_1/transpose	Transpose.embedding_1/embedding_lookup/Identity:output:0gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:d??????????2
gru_1/transpose]
gru_1/ShapeShapegru_1/transpose:y:0*
T0*
_output_shapes
:2
gru_1/Shape?
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice/stack?
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_1?
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_2?
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_1/strided_slice?
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_1/TensorArrayV2/element_shape?
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2?
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_1/TensorArrayUnstack/TensorListFromTensor?
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_1/stack?
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_1?
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_2?
gru_1/strided_slice_1StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_1/strided_slice_1?
gru_1/gru_cell_1/ReadVariableOpReadVariableOp(gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_1/gru_cell_1/ReadVariableOp?
gru_1/gru_cell_1/unstackUnpack'gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_1/gru_cell_1/unstack?
&gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp/gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&gru_1/gru_cell_1/MatMul/ReadVariableOp?
gru_1/gru_cell_1/MatMulMatMulgru_1/strided_slice_1:output:0.gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/MatMul?
gru_1/gru_cell_1/BiasAddBiasAdd!gru_1/gru_cell_1/MatMul:product:0!gru_1/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/BiasAddr
gru_1/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/gru_cell_1/Const?
 gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_1/gru_cell_1/split/split_dim?
gru_1/gru_cell_1/splitSplit)gru_1/gru_cell_1/split/split_dim:output:0!gru_1/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/gru_cell_1/split?
(gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp1gru_1_gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp?
gru_1/gru_cell_1/MatMul_1MatMulzeros:output:00gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/MatMul_1?
gru_1/gru_cell_1/BiasAdd_1BiasAdd#gru_1/gru_cell_1/MatMul_1:product:0!gru_1/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/BiasAdd_1?
gru_1/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_1/gru_cell_1/Const_1?
"gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_1/gru_cell_1/split_1/split_dim?
gru_1/gru_cell_1/split_1SplitV#gru_1/gru_cell_1/BiasAdd_1:output:0!gru_1/gru_cell_1/Const_1:output:0+gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/gru_cell_1/split_1?
gru_1/gru_cell_1/addAddV2gru_1/gru_cell_1/split:output:0!gru_1/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add?
gru_1/gru_cell_1/SigmoidSigmoidgru_1/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Sigmoid?
gru_1/gru_cell_1/add_1AddV2gru_1/gru_cell_1/split:output:1!gru_1/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_1?
gru_1/gru_cell_1/Sigmoid_1Sigmoidgru_1/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Sigmoid_1?
gru_1/gru_cell_1/mulMulgru_1/gru_cell_1/Sigmoid_1:y:0!gru_1/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul?
gru_1/gru_cell_1/add_2AddV2gru_1/gru_cell_1/split:output:2gru_1/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_2?
gru_1/gru_cell_1/TanhTanhgru_1/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Tanh?
gru_1/gru_cell_1/mul_1Mulgru_1/gru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul_1u
gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_1/gru_cell_1/sub/x?
gru_1/gru_cell_1/subSubgru_1/gru_cell_1/sub/x:output:0gru_1/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/sub?
gru_1/gru_cell_1/mul_2Mulgru_1/gru_cell_1/sub:z:0gru_1/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul_2?
gru_1/gru_cell_1/add_3AddV2gru_1/gru_cell_1/mul_1:z:0gru_1/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_3?
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2%
#gru_1/TensorArrayV2_1/element_shape?
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2_1Z

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_1/time?
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_1/while/maximum_iterationsv
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_1/while/loop_counter?
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0zeros:output:0gru_1/strided_slice:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_1_gru_cell_1_readvariableop_resource/gru_1_gru_cell_1_matmul_readvariableop_resource1gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*"
bodyR
gru_1_while_body_49063*"
condR
gru_1_while_cond_49062*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_1/while?
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   28
6gru_1/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype02*
(gru_1/TensorArrayV2Stack/TensorListStack?
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_1/strided_slice_2/stack?
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_2/stack_1?
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_2/stack_2?
gru_1/strided_slice_2StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_1/strided_slice_2?
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose_1/perm?
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?2
gru_1/transpose_1r
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_1/runtime?
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes
:	?C*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes?
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freew
dense_1/Tensordot/ShapeShapegru_1/transpose_1:y:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape?
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2?
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod?
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1?
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack?
dense_1/Tensordot/transpose	Transposegru_1/transpose_1:y:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????d?2
dense_1/Tensordot/transpose?
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_1/Tensordot/Reshape?
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
dense_1/Tensordot/MatMul?
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:C2
dense_1/Tensordot/Const_2?
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dC2
dense_1/Tensordot?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dC2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp,^embedding_1/embedding_lookup/ReadVariableOp'^gru_1/gru_cell_1/MatMul/ReadVariableOp)^gru_1/gru_cell_1/MatMul_1/ReadVariableOp ^gru_1/gru_cell_1/ReadVariableOp^gru_1/while*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2Z
+embedding_1/embedding_lookup/ReadVariableOp+embedding_1/embedding_lookup/ReadVariableOp2P
&gru_1/gru_cell_1/MatMul/ReadVariableOp&gru_1/gru_cell_1/MatMul/ReadVariableOp2T
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp(gru_1/gru_cell_1/MatMul_1/ReadVariableOp2B
gru_1/gru_cell_1/ReadVariableOpgru_1/gru_cell_1/ReadVariableOp2
gru_1/whilegru_1/while:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?G
?
while_body_47866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_1_readvariableop_resource_05
1while_gru_cell_1_matmul_readvariableop_resource_07
3while_gru_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_1_readvariableop_resource3
/while_gru_cell_1_matmul_readvariableop_resource5
1while_gru_cell_1_matmul_1_readvariableop_resource??&while/gru_cell_1/MatMul/ReadVariableOp?(while/gru_cell_1/MatMul_1/ReadVariableOp?while/gru_cell_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_1/ReadVariableOp?
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_1/unstack?
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_1/MatMul/ReadVariableOp?
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul?
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAddr
while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_1/Const?
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_1/split/split_dim?
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split?
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_1/MatMul_1/ReadVariableOp?
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul_1?
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAdd_1?
while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_1/Const_1?
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_1/split_1/split_dim?
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0!while/gru_cell_1/Const_1:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split_1?
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add?
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid?
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_1?
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid_1?
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul?
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_2?
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Tanh?
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_1u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_1/sub/x?
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/sub?
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_2?
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_47574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_47574___redundant_placeholder03
/while_while_cond_47574___redundant_placeholder13
/while_while_cond_47574___redundant_placeholder23
/while_while_cond_47574___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
,
__inference__destroyer_49968
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
*__inference_my_model_1_layer_call_fn_48782
input_1	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dC*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_my_model_1_layer_call_and_return_conditional_losses_482582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
??
?
E__inference_my_model_1_layer_call_and_return_conditional_losses_48765
input_1	8
4embedding_1_embedding_lookup_readvariableop_resource,
(gru_1_gru_cell_1_readvariableop_resource3
/gru_1_gru_cell_1_matmul_readvariableop_resource5
1gru_1_gru_cell_1_matmul_1_readvariableop_resource-
)dense_1_tensordot_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?+embedding_1/embedding_lookup/ReadVariableOp?&gru_1/gru_cell_1/MatMul/ReadVariableOp?(gru_1/gru_cell_1/MatMul_1/ReadVariableOp?gru_1/gru_cell_1/ReadVariableOp?gru_1/while?
+embedding_1/embedding_lookup/ReadVariableOpReadVariableOp4embedding_1_embedding_lookup_readvariableop_resource*
_output_shapes
:	C?*
dtype02-
+embedding_1/embedding_lookup/ReadVariableOp?
!embedding_1/embedding_lookup/axisConst*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_1/embedding_lookup/axis?
embedding_1/embedding_lookupGatherV23embedding_1/embedding_lookup/ReadVariableOp:value:0input_1*embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*,
_output_shapes
:?????????d?2
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*,
_output_shapes
:?????????d?2'
%embedding_1/embedding_lookup/Identityl
ShapeShape.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose/perm?
gru_1/transpose	Transpose.embedding_1/embedding_lookup/Identity:output:0gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:d??????????2
gru_1/transpose]
gru_1/ShapeShapegru_1/transpose:y:0*
T0*
_output_shapes
:2
gru_1/Shape?
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice/stack?
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_1?
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_2?
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_1/strided_slice?
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_1/TensorArrayV2/element_shape?
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2?
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_1/TensorArrayUnstack/TensorListFromTensor?
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_1/stack?
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_1?
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_2?
gru_1/strided_slice_1StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_1/strided_slice_1?
gru_1/gru_cell_1/ReadVariableOpReadVariableOp(gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_1/gru_cell_1/ReadVariableOp?
gru_1/gru_cell_1/unstackUnpack'gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_1/gru_cell_1/unstack?
&gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp/gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&gru_1/gru_cell_1/MatMul/ReadVariableOp?
gru_1/gru_cell_1/MatMulMatMulgru_1/strided_slice_1:output:0.gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/MatMul?
gru_1/gru_cell_1/BiasAddBiasAdd!gru_1/gru_cell_1/MatMul:product:0!gru_1/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/BiasAddr
gru_1/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/gru_cell_1/Const?
 gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_1/gru_cell_1/split/split_dim?
gru_1/gru_cell_1/splitSplit)gru_1/gru_cell_1/split/split_dim:output:0!gru_1/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/gru_cell_1/split?
(gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp1gru_1_gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp?
gru_1/gru_cell_1/MatMul_1MatMulzeros:output:00gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/MatMul_1?
gru_1/gru_cell_1/BiasAdd_1BiasAdd#gru_1/gru_cell_1/MatMul_1:product:0!gru_1/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/BiasAdd_1?
gru_1/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_1/gru_cell_1/Const_1?
"gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_1/gru_cell_1/split_1/split_dim?
gru_1/gru_cell_1/split_1SplitV#gru_1/gru_cell_1/BiasAdd_1:output:0!gru_1/gru_cell_1/Const_1:output:0+gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/gru_cell_1/split_1?
gru_1/gru_cell_1/addAddV2gru_1/gru_cell_1/split:output:0!gru_1/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add?
gru_1/gru_cell_1/SigmoidSigmoidgru_1/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Sigmoid?
gru_1/gru_cell_1/add_1AddV2gru_1/gru_cell_1/split:output:1!gru_1/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_1?
gru_1/gru_cell_1/Sigmoid_1Sigmoidgru_1/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Sigmoid_1?
gru_1/gru_cell_1/mulMulgru_1/gru_cell_1/Sigmoid_1:y:0!gru_1/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul?
gru_1/gru_cell_1/add_2AddV2gru_1/gru_cell_1/split:output:2gru_1/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_2?
gru_1/gru_cell_1/TanhTanhgru_1/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Tanh?
gru_1/gru_cell_1/mul_1Mulgru_1/gru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul_1u
gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_1/gru_cell_1/sub/x?
gru_1/gru_cell_1/subSubgru_1/gru_cell_1/sub/x:output:0gru_1/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/sub?
gru_1/gru_cell_1/mul_2Mulgru_1/gru_cell_1/sub:z:0gru_1/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul_2?
gru_1/gru_cell_1/add_3AddV2gru_1/gru_cell_1/mul_1:z:0gru_1/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_3?
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2%
#gru_1/TensorArrayV2_1/element_shape?
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2_1Z

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_1/time?
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_1/while/maximum_iterationsv
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_1/while/loop_counter?
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0zeros:output:0gru_1/strided_slice:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_1_gru_cell_1_readvariableop_resource/gru_1_gru_cell_1_matmul_readvariableop_resource1gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*"
bodyR
gru_1_while_body_48649*"
condR
gru_1_while_cond_48648*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_1/while?
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   28
6gru_1/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype02*
(gru_1/TensorArrayV2Stack/TensorListStack?
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_1/strided_slice_2/stack?
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_2/stack_1?
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_2/stack_2?
gru_1/strided_slice_2StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_1/strided_slice_2?
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose_1/perm?
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?2
gru_1/transpose_1r
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_1/runtime?
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes
:	?C*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes?
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freew
dense_1/Tensordot/ShapeShapegru_1/transpose_1:y:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape?
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2?
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod?
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1?
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack?
dense_1/Tensordot/transpose	Transposegru_1/transpose_1:y:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????d?2
dense_1/Tensordot/transpose?
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_1/Tensordot/Reshape?
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
dense_1/Tensordot/MatMul?
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:C2
dense_1/Tensordot/Const_2?
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dC2
dense_1/Tensordot?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dC2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp,^embedding_1/embedding_lookup/ReadVariableOp'^gru_1/gru_cell_1/MatMul/ReadVariableOp)^gru_1/gru_cell_1/MatMul_1/ReadVariableOp ^gru_1/gru_cell_1/ReadVariableOp^gru_1/while*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2Z
+embedding_1/embedding_lookup/ReadVariableOp+embedding_1/embedding_lookup/ReadVariableOp2P
&gru_1/gru_cell_1/MatMul/ReadVariableOp&gru_1/gru_cell_1/MatMul/ReadVariableOp2T
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp(gru_1/gru_cell_1/MatMul_1/ReadVariableOp2B
gru_1/gru_cell_1/ReadVariableOpgru_1/gru_cell_1/ReadVariableOp2
gru_1/whilegru_1/while:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?
?
!my_model_1_gru_1_while_cond_41472>
:my_model_1_gru_1_while_my_model_1_gru_1_while_loop_counterD
@my_model_1_gru_1_while_my_model_1_gru_1_while_maximum_iterations&
"my_model_1_gru_1_while_placeholder(
$my_model_1_gru_1_while_placeholder_1(
$my_model_1_gru_1_while_placeholder_2>
:my_model_1_gru_1_while_less_my_model_1_gru_1_strided_sliceU
Qmy_model_1_gru_1_while_my_model_1_gru_1_while_cond_41472___redundant_placeholder0U
Qmy_model_1_gru_1_while_my_model_1_gru_1_while_cond_41472___redundant_placeholder1U
Qmy_model_1_gru_1_while_my_model_1_gru_1_while_cond_41472___redundant_placeholder2U
Qmy_model_1_gru_1_while_my_model_1_gru_1_while_cond_41472___redundant_placeholder3#
my_model_1_gru_1_while_identity
?
my_model_1/gru_1/while/LessLess"my_model_1_gru_1_while_placeholder:my_model_1_gru_1_while_less_my_model_1_gru_1_strided_slice*
T0*
_output_shapes
: 2
my_model_1/gru_1/while/Less?
my_model_1/gru_1/while/IdentityIdentitymy_model_1/gru_1/while/Less:z:0*
T0
*
_output_shapes
: 2!
my_model_1/gru_1/while/Identity"K
my_model_1_gru_1_while_identity(my_model_1/gru_1/while/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?G
?
while_body_49782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_1_readvariableop_resource_05
1while_gru_cell_1_matmul_readvariableop_resource_07
3while_gru_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_1_readvariableop_resource3
/while_gru_cell_1_matmul_readvariableop_resource5
1while_gru_cell_1_matmul_1_readvariableop_resource??&while/gru_cell_1/MatMul/ReadVariableOp?(while/gru_cell_1/MatMul_1/ReadVariableOp?while/gru_cell_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_1/ReadVariableOp?
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_1/unstack?
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_1/MatMul/ReadVariableOp?
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul?
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAddr
while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_1/Const?
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_1/split/split_dim?
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split?
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_1/MatMul_1/ReadVariableOp?
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul_1?
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAdd_1?
while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_1/Const_1?
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_1/split_1/split_dim?
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0!while/gru_cell_1/Const_1:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split_1?
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add?
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid?
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_1?
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid_1?
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul?
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_2?
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Tanh?
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_1u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_1/sub/x?
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/sub?
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_2?
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
!__inference__traced_restore_50342
file_prefix]
Ystring_lookup_3_index_table_table_restore_lookuptableimportv2_string_lookup_3_index_table]
Ystring_lookup_2_index_table_table_restore_lookuptableimportv2_string_lookup_2_index_table6
2assignvariableop_my_model_1_embedding_1_embeddings0
,assignvariableop_1_my_model_1_dense_1_kernel.
*assignvariableop_2_my_model_1_dense_1_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate9
5assignvariableop_8_my_model_1_gru_1_gru_cell_1_kernelC
?assignvariableop_9_my_model_1_gru_1_gru_cell_1_recurrent_kernel8
4assignvariableop_10_my_model_1_gru_1_gru_cell_1_bias
assignvariableop_11_total
assignvariableop_12_count@
<assignvariableop_13_adam_my_model_1_embedding_1_embeddings_m8
4assignvariableop_14_adam_my_model_1_dense_1_kernel_m6
2assignvariableop_15_adam_my_model_1_dense_1_bias_mA
=assignvariableop_16_adam_my_model_1_gru_1_gru_cell_1_kernel_mK
Gassignvariableop_17_adam_my_model_1_gru_1_gru_cell_1_recurrent_kernel_m?
;assignvariableop_18_adam_my_model_1_gru_1_gru_cell_1_bias_m@
<assignvariableop_19_adam_my_model_1_embedding_1_embeddings_v8
4assignvariableop_20_adam_my_model_1_dense_1_kernel_v6
2assignvariableop_21_adam_my_model_1_dense_1_bias_vA
=assignvariableop_22_adam_my_model_1_gru_1_gru_cell_1_kernel_vK
Gassignvariableop_23_adam_my_model_1_gru_1_gru_cell_1_recurrent_kernel_v?
;assignvariableop_24_adam_my_model_1_gru_1_gru_cell_1_bias_v
identity_26??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?=string_lookup_2_index_table_table_restore/LookupTableImportV2?=string_lookup_3_index_table_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B,chars_from_ids/_table/.ATTRIBUTES/table-keysB.chars_from_ids/_table/.ATTRIBUTES/table-valuesB,ids_from_chars/_table/.ATTRIBUTES/table-keysB.ids_from_chars/_table/.ATTRIBUTES/table-valuesB5model/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB-model/dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB+model/dense/bias/.ATTRIBUTES/VARIABLE_VALUEB/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB6model/trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB6model/trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB6model/trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBWmodel/embedding/embeddings/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOmodel/dense/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMmodel/dense/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/1/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/2/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/3/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWmodel/embedding/embeddings/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBOmodel/dense/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMmodel/dense/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/1/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/2/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/3/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2			2
	RestoreV2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2LookupTableImportV2Ystring_lookup_3_index_table_table_restore_lookuptableimportv2_string_lookup_3_index_tableRestoreV2:tensors:0RestoreV2:tensors:1*	
Tin0	*

Tout0*.
_class$
" loc:@string_lookup_3_index_table*
_output_shapes
 2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2?
=string_lookup_2_index_table_table_restore/LookupTableImportV2LookupTableImportV2Ystring_lookup_2_index_table_table_restore_lookuptableimportv2_string_lookup_2_index_tableRestoreV2:tensors:2RestoreV2:tensors:3*	
Tin0*

Tout0	*.
_class$
" loc:@string_lookup_2_index_table*
_output_shapes
 2?
=string_lookup_2_index_table_table_restore/LookupTableImportV2g
IdentityIdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp2assignvariableop_my_model_1_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp,assignvariableop_1_my_model_1_dense_1_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp*assignvariableop_2_my_model_1_dense_1_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5l

Identity_6IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6l

Identity_7IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7l

Identity_8IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp5assignvariableop_8_my_model_1_gru_1_gru_cell_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8l

Identity_9IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp?assignvariableop_9_my_model_1_gru_1_gru_cell_1_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp4assignvariableop_10_my_model_1_gru_1_gru_cell_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp<assignvariableop_13_adam_my_model_1_embedding_1_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adam_my_model_1_dense_1_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_my_model_1_dense_1_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp=assignvariableop_16_adam_my_model_1_gru_1_gru_cell_1_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpGassignvariableop_17_adam_my_model_1_gru_1_gru_cell_1_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp;assignvariableop_18_adam_my_model_1_gru_1_gru_cell_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp<assignvariableop_19_adam_my_model_1_embedding_1_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_my_model_1_dense_1_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_my_model_1_dense_1_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp=assignvariableop_22_adam_my_model_1_gru_1_gru_cell_1_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpGassignvariableop_23_adam_my_model_1_gru_1_gru_cell_1_recurrent_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp;assignvariableop_24_adam_my_model_1_gru_1_gru_cell_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp>^string_lookup_2_index_table_table_restore/LookupTableImportV2>^string_lookup_3_index_table_table_restore/LookupTableImportV2"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_25?
Identity_26IdentityIdentity_25:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9>^string_lookup_2_index_table_table_restore/LookupTableImportV2>^string_lookup_3_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2
Identity_26"#
identity_26Identity_26:output:0*?
_input_shapesp
n: :::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92~
=string_lookup_2_index_table_table_restore/LookupTableImportV2=string_lookup_2_index_table_table_restore/LookupTableImportV22~
=string_lookup_3_index_table_table_restore/LookupTableImportV2=string_lookup_3_index_table_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_class$
" loc:@string_lookup_3_index_table:40
.
_class$
" loc:@string_lookup_2_index_table
?>
?
@__inference_gru_1_layer_call_and_return_conditional_losses_47640

inputs
gru_cell_1_47563
gru_cell_1_47565
gru_cell_1_47567
identity

identity_1??"gru_cell_1/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
"gru_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_1_47563gru_cell_1_47565gru_cell_1_47567*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_472742$
"gru_cell_1/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_1_47563gru_cell_1_47565gru_cell_1_47567*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_47575*
condR
while_cond_47574*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^gru_cell_1/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identitywhile:output:4#^gru_cell_1/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:???????????????????:::2H
"gru_cell_1/StatefulPartitionedCall"gru_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
!my_model_1_gru_1_while_cond_41212>
:my_model_1_gru_1_while_my_model_1_gru_1_while_loop_counterD
@my_model_1_gru_1_while_my_model_1_gru_1_while_maximum_iterations&
"my_model_1_gru_1_while_placeholder(
$my_model_1_gru_1_while_placeholder_1(
$my_model_1_gru_1_while_placeholder_2>
:my_model_1_gru_1_while_less_my_model_1_gru_1_strided_sliceU
Qmy_model_1_gru_1_while_my_model_1_gru_1_while_cond_41212___redundant_placeholder0U
Qmy_model_1_gru_1_while_my_model_1_gru_1_while_cond_41212___redundant_placeholder1U
Qmy_model_1_gru_1_while_my_model_1_gru_1_while_cond_41212___redundant_placeholder2U
Qmy_model_1_gru_1_while_my_model_1_gru_1_while_cond_41212___redundant_placeholder3#
my_model_1_gru_1_while_identity
?
my_model_1/gru_1/while/LessLess"my_model_1_gru_1_while_placeholder:my_model_1_gru_1_while_less_my_model_1_gru_1_strided_slice*
T0*
_output_shapes
: 2
my_model_1/gru_1/while/Less?
my_model_1/gru_1/while/IdentityIdentitymy_model_1/gru_1/while/Less:z:0*
T0
*
_output_shapes
: 2!
my_model_1/gru_1/while/Identity"K
my_model_1_gru_1_while_identity(my_model_1/gru_1/while/Identity:output:0*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?	
?
__inference_restore_fn_50103
restored_tensors_0	
restored_tensors_1N
Jstring_lookup_3_index_table_table_restore_lookuptableimportv2_table_handle
identity??=string_lookup_3_index_table_table_restore/LookupTableImportV2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2LookupTableImportV2Jstring_lookup_3_index_table_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0*
_output_shapes
 2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const?
IdentityIdentityConst:output:0>^string_lookup_3_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:::2~
=string_lookup_3_index_table_table_restore/LookupTableImportV2=string_lookup_3_index_table_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?P
?
gru_1_while_body_48649(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2%
!gru_1_while_gru_1_strided_slice_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_04
0gru_1_while_gru_cell_1_readvariableop_resource_0;
7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0=
9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0
gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4#
gru_1_while_gru_1_strided_slicea
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor2
.gru_1_while_gru_cell_1_readvariableop_resource9
5gru_1_while_gru_cell_1_matmul_readvariableop_resource;
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource??,gru_1/while/gru_cell_1/MatMul/ReadVariableOp?.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?%gru_1/while/gru_cell_1/ReadVariableOp?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype021
/gru_1/while/TensorArrayV2Read/TensorListGetItem?
%gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp0gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%gru_1/while/gru_cell_1/ReadVariableOp?
gru_1/while/gru_cell_1/unstackUnpack-gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2 
gru_1/while/gru_cell_1/unstack?
,gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp?
gru_1/while/gru_cell_1/MatMulMatMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:04gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/MatMul?
gru_1/while/gru_cell_1/BiasAddBiasAdd'gru_1/while/gru_cell_1/MatMul:product:0'gru_1/while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2 
gru_1/while/gru_cell_1/BiasAdd~
gru_1/while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/gru_cell_1/Const?
&gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_1/while/gru_cell_1/split/split_dim?
gru_1/while/gru_cell_1/splitSplit/gru_1/while/gru_cell_1/split/split_dim:output:0'gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/while/gru_cell_1/split?
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?
gru_1/while/gru_cell_1/MatMul_1MatMulgru_1_while_placeholder_26gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_1/while/gru_cell_1/MatMul_1?
 gru_1/while/gru_cell_1/BiasAdd_1BiasAdd)gru_1/while/gru_cell_1/MatMul_1:product:0'gru_1/while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2"
 gru_1/while/gru_cell_1/BiasAdd_1?
gru_1/while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2 
gru_1/while/gru_cell_1/Const_1?
(gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_1/while/gru_cell_1/split_1/split_dim?
gru_1/while/gru_cell_1/split_1SplitV)gru_1/while/gru_cell_1/BiasAdd_1:output:0'gru_1/while/gru_cell_1/Const_1:output:01gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_1/while/gru_cell_1/split_1?
gru_1/while/gru_cell_1/addAddV2%gru_1/while/gru_cell_1/split:output:0'gru_1/while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add?
gru_1/while/gru_cell_1/SigmoidSigmoidgru_1/while/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2 
gru_1/while/gru_cell_1/Sigmoid?
gru_1/while/gru_cell_1/add_1AddV2%gru_1/while/gru_cell_1/split:output:1'gru_1/while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_1?
 gru_1/while/gru_cell_1/Sigmoid_1Sigmoid gru_1/while/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 gru_1/while/gru_cell_1/Sigmoid_1?
gru_1/while/gru_cell_1/mulMul$gru_1/while/gru_cell_1/Sigmoid_1:y:0'gru_1/while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul?
gru_1/while/gru_cell_1/add_2AddV2%gru_1/while/gru_cell_1/split:output:2gru_1/while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_2?
gru_1/while/gru_cell_1/TanhTanh gru_1/while/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/Tanh?
gru_1/while/gru_cell_1/mul_1Mul"gru_1/while/gru_cell_1/Sigmoid:y:0gru_1_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul_1?
gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_1/while/gru_cell_1/sub/x?
gru_1/while/gru_cell_1/subSub%gru_1/while/gru_cell_1/sub/x:output:0"gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/sub?
gru_1/while/gru_cell_1/mul_2Mulgru_1/while/gru_cell_1/sub:z:0gru_1/while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul_2?
gru_1/while/gru_cell_1/add_3AddV2 gru_1/while/gru_cell_1/mul_1:z:0 gru_1/while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_3?
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1gru_1_while_placeholder gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_1/while/TensorArrayV2Write/TensorListSetItemh
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add/y?
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/addl
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add_1/y?
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/add_1?
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity?
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_1?
gru_1/while/Identity_2Identitygru_1/while/add:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_2?
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_3?
gru_1/while/Identity_4Identity gru_1/while/gru_cell_1/add_3:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
gru_1/while/Identity_4"D
gru_1_while_gru_1_strided_slice!gru_1_while_gru_1_strided_slice_0"t
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"p
5gru_1_while_gru_cell_1_matmul_readvariableop_resource7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"b
.gru_1_while_gru_cell_1_readvariableop_resource0gru_1_while_gru_cell_1_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"?
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2\
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp,gru_1/while/gru_cell_1/MatMul/ReadVariableOp2`
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2N
%gru_1/while/gru_cell_1/ReadVariableOp%gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?G
?
while_body_49434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_1_readvariableop_resource_05
1while_gru_cell_1_matmul_readvariableop_resource_07
3while_gru_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_1_readvariableop_resource3
/while_gru_cell_1_matmul_readvariableop_resource5
1while_gru_cell_1_matmul_1_readvariableop_resource??&while/gru_cell_1/MatMul/ReadVariableOp?(while/gru_cell_1/MatMul_1/ReadVariableOp?while/gru_cell_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_1/ReadVariableOp?
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_1/unstack?
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_1/MatMul/ReadVariableOp?
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul?
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAddr
while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_1/Const?
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_1/split/split_dim?
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split?
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_1/MatMul_1/ReadVariableOp?
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul_1?
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAdd_1?
while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_1/Const_1?
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_1/split_1/split_dim?
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0!while/gru_cell_1/Const_1:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split_1?
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add?
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid?
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_1?
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid_1?
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul?
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_2?
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Tanh?
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_1u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_1/sub/x?
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/sub?
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_2?
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_48013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_48013___redundant_placeholder03
/while_while_cond_48013___redundant_placeholder13
/while_while_cond_48013___redundant_placeholder23
/while_while_cond_48013___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
,
__inference__destroyer_49953
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
.
__inference__initializer_49963
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
__inference_save_fn_50122
checkpoint_key[
Wstring_lookup_2_index_table_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	??Jstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2?
Jstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Wstring_lookup_2_index_table_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2L
Jstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1?
IdentityIdentityadd:z:0K^string_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const?

Identity_1IdentityConst:output:0K^string_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityQstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2:keys:0K^string_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
:2

Identity_2?

Identity_3Identity	add_1:z:0K^string_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1?

Identity_4IdentityConst_1:output:0K^string_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentitySstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2:values:0K^string_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2*
T0	*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapes
: :2?
Jstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2Jstring_lookup_2_index_table_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
*__inference_my_model_1_layer_call_fn_49213

inputs	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dC*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_my_model_1_layer_call_and_return_conditional_losses_483082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
B__inference_dense_1_layer_call_and_return_conditional_losses_48172

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?C*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????d?2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:C2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dC2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:C*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dC2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????d?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
?
__inference_save_fn_50095
checkpoint_key[
Wstring_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2	

identity_3

identity_4

identity_5??Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2?
Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Wstring_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0	*
Tvalues0*
_output_shapes

::2L
Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1?
IdentityIdentityadd:z:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const?

Identity_1IdentityConst:output:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityQstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2:keys:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0	*
_output_shapes
:2

Identity_2?

Identity_3Identity	add_1:z:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1?

Identity_4IdentityConst_1:output:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentitySstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2:values:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapes
: :2?
Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?P
?
gru_1_while_body_49063(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2%
!gru_1_while_gru_1_strided_slice_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_04
0gru_1_while_gru_cell_1_readvariableop_resource_0;
7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0=
9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0
gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4#
gru_1_while_gru_1_strided_slicea
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor2
.gru_1_while_gru_cell_1_readvariableop_resource9
5gru_1_while_gru_cell_1_matmul_readvariableop_resource;
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource??,gru_1/while/gru_cell_1/MatMul/ReadVariableOp?.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?%gru_1/while/gru_cell_1/ReadVariableOp?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype021
/gru_1/while/TensorArrayV2Read/TensorListGetItem?
%gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp0gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%gru_1/while/gru_cell_1/ReadVariableOp?
gru_1/while/gru_cell_1/unstackUnpack-gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2 
gru_1/while/gru_cell_1/unstack?
,gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp?
gru_1/while/gru_cell_1/MatMulMatMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:04gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/MatMul?
gru_1/while/gru_cell_1/BiasAddBiasAdd'gru_1/while/gru_cell_1/MatMul:product:0'gru_1/while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2 
gru_1/while/gru_cell_1/BiasAdd~
gru_1/while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/gru_cell_1/Const?
&gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_1/while/gru_cell_1/split/split_dim?
gru_1/while/gru_cell_1/splitSplit/gru_1/while/gru_cell_1/split/split_dim:output:0'gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/while/gru_cell_1/split?
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?
gru_1/while/gru_cell_1/MatMul_1MatMulgru_1_while_placeholder_26gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_1/while/gru_cell_1/MatMul_1?
 gru_1/while/gru_cell_1/BiasAdd_1BiasAdd)gru_1/while/gru_cell_1/MatMul_1:product:0'gru_1/while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2"
 gru_1/while/gru_cell_1/BiasAdd_1?
gru_1/while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2 
gru_1/while/gru_cell_1/Const_1?
(gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_1/while/gru_cell_1/split_1/split_dim?
gru_1/while/gru_cell_1/split_1SplitV)gru_1/while/gru_cell_1/BiasAdd_1:output:0'gru_1/while/gru_cell_1/Const_1:output:01gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_1/while/gru_cell_1/split_1?
gru_1/while/gru_cell_1/addAddV2%gru_1/while/gru_cell_1/split:output:0'gru_1/while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add?
gru_1/while/gru_cell_1/SigmoidSigmoidgru_1/while/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2 
gru_1/while/gru_cell_1/Sigmoid?
gru_1/while/gru_cell_1/add_1AddV2%gru_1/while/gru_cell_1/split:output:1'gru_1/while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_1?
 gru_1/while/gru_cell_1/Sigmoid_1Sigmoid gru_1/while/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 gru_1/while/gru_cell_1/Sigmoid_1?
gru_1/while/gru_cell_1/mulMul$gru_1/while/gru_cell_1/Sigmoid_1:y:0'gru_1/while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul?
gru_1/while/gru_cell_1/add_2AddV2%gru_1/while/gru_cell_1/split:output:2gru_1/while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_2?
gru_1/while/gru_cell_1/TanhTanh gru_1/while/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/Tanh?
gru_1/while/gru_cell_1/mul_1Mul"gru_1/while/gru_cell_1/Sigmoid:y:0gru_1_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul_1?
gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_1/while/gru_cell_1/sub/x?
gru_1/while/gru_cell_1/subSub%gru_1/while/gru_cell_1/sub/x:output:0"gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/sub?
gru_1/while/gru_cell_1/mul_2Mulgru_1/while/gru_cell_1/sub:z:0gru_1/while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul_2?
gru_1/while/gru_cell_1/add_3AddV2 gru_1/while/gru_cell_1/mul_1:z:0 gru_1/while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_3?
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1gru_1_while_placeholder gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_1/while/TensorArrayV2Write/TensorListSetItemh
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add/y?
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/addl
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add_1/y?
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/add_1?
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity?
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_1?
gru_1/while/Identity_2Identitygru_1/while/add:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_2?
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_3?
gru_1/while/Identity_4Identity gru_1/while/gru_cell_1/add_3:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
gru_1/while/Identity_4"D
gru_1_while_gru_1_strided_slice!gru_1_while_gru_1_strided_slice_0"t
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"p
5gru_1_while_gru_cell_1_matmul_readvariableop_resource7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"b
.gru_1_while_gru_cell_1_readvariableop_resource0gru_1_while_gru_cell_1_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"?
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2\
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp,gru_1/while/gru_cell_1/MatMul/ReadVariableOp2`
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2N
%gru_1/while/gru_cell_1/ReadVariableOp%gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
__inference_restore_fn_50130
restored_tensors_0
restored_tensors_1	N
Jstring_lookup_2_index_table_table_restore_lookuptableimportv2_table_handle
identity??=string_lookup_2_index_table_table_restore/LookupTableImportV2?
=string_lookup_2_index_table_table_restore/LookupTableImportV2LookupTableImportV2Jstring_lookup_2_index_table_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2?
=string_lookup_2_index_table_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const?
IdentityIdentityConst:output:0>^string_lookup_2_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:::2~
=string_lookup_2_index_table_table_restore/LookupTableImportV2=string_lookup_2_index_table_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
B__inference_dense_1_layer_call_and_return_conditional_losses_49929

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?C*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????d?2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:C2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dC2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:C*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dC2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????d?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
?
while_cond_49781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_49781___redundant_placeholder03
/while_while_cond_49781___redundant_placeholder13
/while_while_cond_49781___redundant_placeholder23
/while_while_cond_49781___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?
E__inference_my_model_1_layer_call_and_return_conditional_losses_48989

inputs	8
4embedding_1_embedding_lookup_readvariableop_resource,
(gru_1_gru_cell_1_readvariableop_resource3
/gru_1_gru_cell_1_matmul_readvariableop_resource5
1gru_1_gru_cell_1_matmul_1_readvariableop_resource-
)dense_1_tensordot_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?+embedding_1/embedding_lookup/ReadVariableOp?&gru_1/gru_cell_1/MatMul/ReadVariableOp?(gru_1/gru_cell_1/MatMul_1/ReadVariableOp?gru_1/gru_cell_1/ReadVariableOp?gru_1/while?
+embedding_1/embedding_lookup/ReadVariableOpReadVariableOp4embedding_1_embedding_lookup_readvariableop_resource*
_output_shapes
:	C?*
dtype02-
+embedding_1/embedding_lookup/ReadVariableOp?
!embedding_1/embedding_lookup/axisConst*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_1/embedding_lookup/axis?
embedding_1/embedding_lookupGatherV23embedding_1/embedding_lookup/ReadVariableOp:value:0inputs*embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*,
_output_shapes
:?????????d?2
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*,
_output_shapes
:?????????d?2'
%embedding_1/embedding_lookup/Identityl
ShapeShape.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose/perm?
gru_1/transpose	Transpose.embedding_1/embedding_lookup/Identity:output:0gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:d??????????2
gru_1/transpose]
gru_1/ShapeShapegru_1/transpose:y:0*
T0*
_output_shapes
:2
gru_1/Shape?
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice/stack?
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_1?
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_2?
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_1/strided_slice?
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_1/TensorArrayV2/element_shape?
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2?
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_1/TensorArrayUnstack/TensorListFromTensor?
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_1/stack?
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_1?
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_2?
gru_1/strided_slice_1StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_1/strided_slice_1?
gru_1/gru_cell_1/ReadVariableOpReadVariableOp(gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_1/gru_cell_1/ReadVariableOp?
gru_1/gru_cell_1/unstackUnpack'gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_1/gru_cell_1/unstack?
&gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp/gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&gru_1/gru_cell_1/MatMul/ReadVariableOp?
gru_1/gru_cell_1/MatMulMatMulgru_1/strided_slice_1:output:0.gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/MatMul?
gru_1/gru_cell_1/BiasAddBiasAdd!gru_1/gru_cell_1/MatMul:product:0!gru_1/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/BiasAddr
gru_1/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/gru_cell_1/Const?
 gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_1/gru_cell_1/split/split_dim?
gru_1/gru_cell_1/splitSplit)gru_1/gru_cell_1/split/split_dim:output:0!gru_1/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/gru_cell_1/split?
(gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp1gru_1_gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp?
gru_1/gru_cell_1/MatMul_1MatMulzeros:output:00gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/MatMul_1?
gru_1/gru_cell_1/BiasAdd_1BiasAdd#gru_1/gru_cell_1/MatMul_1:product:0!gru_1/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/BiasAdd_1?
gru_1/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_1/gru_cell_1/Const_1?
"gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_1/gru_cell_1/split_1/split_dim?
gru_1/gru_cell_1/split_1SplitV#gru_1/gru_cell_1/BiasAdd_1:output:0!gru_1/gru_cell_1/Const_1:output:0+gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/gru_cell_1/split_1?
gru_1/gru_cell_1/addAddV2gru_1/gru_cell_1/split:output:0!gru_1/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add?
gru_1/gru_cell_1/SigmoidSigmoidgru_1/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Sigmoid?
gru_1/gru_cell_1/add_1AddV2gru_1/gru_cell_1/split:output:1!gru_1/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_1?
gru_1/gru_cell_1/Sigmoid_1Sigmoidgru_1/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Sigmoid_1?
gru_1/gru_cell_1/mulMulgru_1/gru_cell_1/Sigmoid_1:y:0!gru_1/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul?
gru_1/gru_cell_1/add_2AddV2gru_1/gru_cell_1/split:output:2gru_1/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_2?
gru_1/gru_cell_1/TanhTanhgru_1/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Tanh?
gru_1/gru_cell_1/mul_1Mulgru_1/gru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul_1u
gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_1/gru_cell_1/sub/x?
gru_1/gru_cell_1/subSubgru_1/gru_cell_1/sub/x:output:0gru_1/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/sub?
gru_1/gru_cell_1/mul_2Mulgru_1/gru_cell_1/sub:z:0gru_1/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul_2?
gru_1/gru_cell_1/add_3AddV2gru_1/gru_cell_1/mul_1:z:0gru_1/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_3?
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2%
#gru_1/TensorArrayV2_1/element_shape?
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2_1Z

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_1/time?
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_1/while/maximum_iterationsv
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_1/while/loop_counter?
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0zeros:output:0gru_1/strided_slice:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_1_gru_cell_1_readvariableop_resource/gru_1_gru_cell_1_matmul_readvariableop_resource1gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*"
bodyR
gru_1_while_body_48873*"
condR
gru_1_while_cond_48872*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_1/while?
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   28
6gru_1/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype02*
(gru_1/TensorArrayV2Stack/TensorListStack?
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_1/strided_slice_2/stack?
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_2/stack_1?
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_2/stack_2?
gru_1/strided_slice_2StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_1/strided_slice_2?
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose_1/perm?
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?2
gru_1/transpose_1r
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_1/runtime?
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes
:	?C*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes?
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freew
dense_1/Tensordot/ShapeShapegru_1/transpose_1:y:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape?
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2?
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod?
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1?
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack?
dense_1/Tensordot/transpose	Transposegru_1/transpose_1:y:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????d?2
dense_1/Tensordot/transpose?
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_1/Tensordot/Reshape?
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
dense_1/Tensordot/MatMul?
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:C2
dense_1/Tensordot/Const_2?
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dC2
dense_1/Tensordot?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dC2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp,^embedding_1/embedding_lookup/ReadVariableOp'^gru_1/gru_cell_1/MatMul/ReadVariableOp)^gru_1/gru_cell_1/MatMul_1/ReadVariableOp ^gru_1/gru_cell_1/ReadVariableOp^gru_1/while*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2Z
+embedding_1/embedding_lookup/ReadVariableOp+embedding_1/embedding_lookup/ReadVariableOp2P
&gru_1/gru_cell_1/MatMul/ReadVariableOp&gru_1/gru_cell_1/MatMul/ReadVariableOp2T
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp(gru_1/gru_cell_1/MatMul_1/ReadVariableOp2B
gru_1/gru_cell_1/ReadVariableOpgru_1/gru_cell_1/ReadVariableOp2
gru_1/whilegru_1/while:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
|
'__inference_dense_1_layer_call_fn_49938

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dC*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_481722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????d?::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
.
__inference__initializer_49948
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
gru_1_while_cond_49062(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2(
$gru_1_while_less_gru_1_strided_slice?
;gru_1_while_gru_1_while_cond_49062___redundant_placeholder0?
;gru_1_while_gru_1_while_cond_49062___redundant_placeholder1?
;gru_1_while_gru_1_while_cond_49062___redundant_placeholder2?
;gru_1_while_gru_1_while_cond_49062___redundant_placeholder3
gru_1_while_identity
?
gru_1/while/LessLessgru_1_while_placeholder$gru_1_while_less_gru_1_strided_slice*
T0*
_output_shapes
: 2
gru_1/while/Lesso
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_1/while/Identity"5
gru_1_while_identitygru_1/while/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_47695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_47695___redundant_placeholder03
/while_while_cond_47695___redundant_placeholder13
/while_while_cond_47695___redundant_placeholder23
/while_while_cond_47695___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?I
?
__inference__traced_save_50251
file_prefixU
Qsavev2_string_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2	W
Ssavev2_string_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2_1U
Qsavev2_string_lookup_2_index_table_lookup_table_export_values_lookuptableexportv2W
Ssavev2_string_lookup_2_index_table_lookup_table_export_values_lookuptableexportv2_1	@
<savev2_my_model_1_embedding_1_embeddings_read_readvariableop8
4savev2_my_model_1_dense_1_kernel_read_readvariableop6
2savev2_my_model_1_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopA
=savev2_my_model_1_gru_1_gru_cell_1_kernel_read_readvariableopK
Gsavev2_my_model_1_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop?
;savev2_my_model_1_gru_1_gru_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopG
Csavev2_adam_my_model_1_embedding_1_embeddings_m_read_readvariableop?
;savev2_adam_my_model_1_dense_1_kernel_m_read_readvariableop=
9savev2_adam_my_model_1_dense_1_bias_m_read_readvariableopH
Dsavev2_adam_my_model_1_gru_1_gru_cell_1_kernel_m_read_readvariableopR
Nsavev2_adam_my_model_1_gru_1_gru_cell_1_recurrent_kernel_m_read_readvariableopF
Bsavev2_adam_my_model_1_gru_1_gru_cell_1_bias_m_read_readvariableopG
Csavev2_adam_my_model_1_embedding_1_embeddings_v_read_readvariableop?
;savev2_adam_my_model_1_dense_1_kernel_v_read_readvariableop=
9savev2_adam_my_model_1_dense_1_bias_v_read_readvariableopH
Dsavev2_adam_my_model_1_gru_1_gru_cell_1_kernel_v_read_readvariableopR
Nsavev2_adam_my_model_1_gru_1_gru_cell_1_recurrent_kernel_v_read_readvariableopF
Bsavev2_adam_my_model_1_gru_1_gru_cell_1_bias_v_read_readvariableop
savev2_const_3

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B,chars_from_ids/_table/.ATTRIBUTES/table-keysB.chars_from_ids/_table/.ATTRIBUTES/table-valuesB,ids_from_chars/_table/.ATTRIBUTES/table-keysB.ids_from_chars/_table/.ATTRIBUTES/table-valuesB5model/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB-model/dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB+model/dense/bias/.ATTRIBUTES/VARIABLE_VALUEB/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB6model/trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB6model/trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB6model/trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBWmodel/embedding/embeddings/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOmodel/dense/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMmodel/dense/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/1/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/2/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/3/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWmodel/embedding/embeddings/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBOmodel/dense/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMmodel/dense/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/1/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/2/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/trainable_variables/3/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Qsavev2_string_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2Ssavev2_string_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2_1Qsavev2_string_lookup_2_index_table_lookup_table_export_values_lookuptableexportv2Ssavev2_string_lookup_2_index_table_lookup_table_export_values_lookuptableexportv2_1<savev2_my_model_1_embedding_1_embeddings_read_readvariableop4savev2_my_model_1_dense_1_kernel_read_readvariableop2savev2_my_model_1_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop=savev2_my_model_1_gru_1_gru_cell_1_kernel_read_readvariableopGsavev2_my_model_1_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop;savev2_my_model_1_gru_1_gru_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopCsavev2_adam_my_model_1_embedding_1_embeddings_m_read_readvariableop;savev2_adam_my_model_1_dense_1_kernel_m_read_readvariableop9savev2_adam_my_model_1_dense_1_bias_m_read_readvariableopDsavev2_adam_my_model_1_gru_1_gru_cell_1_kernel_m_read_readvariableopNsavev2_adam_my_model_1_gru_1_gru_cell_1_recurrent_kernel_m_read_readvariableopBsavev2_adam_my_model_1_gru_1_gru_cell_1_bias_m_read_readvariableopCsavev2_adam_my_model_1_embedding_1_embeddings_v_read_readvariableop;savev2_adam_my_model_1_dense_1_kernel_v_read_readvariableop9savev2_adam_my_model_1_dense_1_bias_v_read_readvariableopDsavev2_adam_my_model_1_gru_1_gru_cell_1_kernel_v_read_readvariableopNsavev2_adam_my_model_1_gru_1_gru_cell_1_recurrent_kernel_v_read_readvariableopBsavev2_adam_my_model_1_gru_1_gru_cell_1_bias_v_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2			2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::	C?:	?C:C: : : : : :
??:
??:	?: : :	C?:	?C:C:
??:
??:	?:	C?:	?C:C:
??:
??:	?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::%!

_output_shapes
:	C?:%!

_output_shapes
:	?C: 

_output_shapes
:C:

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	C?:%!

_output_shapes
:	?C: 

_output_shapes
:C:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:%!

_output_shapes
:	C?:%!

_output_shapes
:	?C: 

_output_shapes
:C:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:

_output_shapes
: 
?
K
__inference__creator_49943
identity??string_lookup_3_index_table?
string_lookup_3_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name
table_2337*
value_dtype02
string_lookup_3_index_table?
IdentityIdentity*string_lookup_3_index_table:table_handle:0^string_lookup_3_index_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 2:
string_lookup_3_index_tablestring_lookup_3_index_table
?Q
?
@__inference_gru_1_layer_call_and_return_conditional_losses_49525

inputs
initial_state_0&
"gru_cell_1_readvariableop_resource-
)gru_cell_1_matmul_readvariableop_resource/
+gru_cell_1_matmul_1_readvariableop_resource
identity

identity_1?? gru_cell_1/MatMul/ReadVariableOp?"gru_cell_1/MatMul_1/ReadVariableOp?gru_cell_1/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1?
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_1/ReadVariableOp?
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_1/unstack?
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_1/MatMul/ReadVariableOp?
gru_cell_1/MatMulMatMulstrided_slice_1:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul?
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAddf
gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_1/Const?
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split/split_dim?
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split?
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_1/MatMul_1/ReadVariableOp?
gru_cell_1/MatMul_1MatMulinitial_state_0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul_1?
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAdd_1}
gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_1/Const_1?
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split_1/split_dim?
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const_1:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split_1?
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid?
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_1?
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid_1?
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul?
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Tanh?
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0initial_state_0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_1i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_1/sub/x?
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/sub?
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_2?
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_state_0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_49434*
condR
while_cond_49433*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*,
_output_shapes
:?????????d?2

Identity?

Identity_1Identitywhile:output:4!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*K
_input_shapes:
8:?????????d?:??????????:::2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:YU
(
_output_shapes
:??????????
)
_user_specified_nameinitial_state/0
?
?
gru_1_while_cond_48458(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2(
$gru_1_while_less_gru_1_strided_slice?
;gru_1_while_gru_1_while_cond_48458___redundant_placeholder0?
;gru_1_while_gru_1_while_cond_48458___redundant_placeholder1?
;gru_1_while_gru_1_while_cond_48458___redundant_placeholder2?
;gru_1_while_gru_1_while_cond_48458___redundant_placeholder3
gru_1_while_identity
?
gru_1/while/LessLessgru_1_while_placeholder$gru_1_while_less_gru_1_strided_slice*
T0*
_output_shapes
: 2
gru_1/while/Lesso
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_1/while/Identity"5
gru_1_while_identitygru_1/while/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_my_model_1_layer_call_fn_49196

inputs	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dC*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_my_model_1_layer_call_and_return_conditional_losses_482582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?

#__inference_generate_one_step_41344

inputs

states`
\string_lookup_2_string_lookup_2_index_table_lookup_table_find_lookuptablefindv2_table_handlea
]string_lookup_2_string_lookup_2_index_table_lookup_table_find_lookuptablefindv2_default_value	C
?my_model_1_embedding_1_embedding_lookup_readvariableop_resource7
3my_model_1_gru_1_gru_cell_1_readvariableop_resource>
:my_model_1_gru_1_gru_cell_1_matmul_readvariableop_resource@
<my_model_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource8
4my_model_1_dense_1_tensordot_readvariableop_resource6
2my_model_1_dense_1_biasadd_readvariableop_resource	
add_y`
\string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handlea
]string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value
identity

identity_1??)my_model_1/dense_1/BiasAdd/ReadVariableOp?+my_model_1/dense_1/Tensordot/ReadVariableOp?6my_model_1/embedding_1/embedding_lookup/ReadVariableOp?1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp?3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp?*my_model_1/gru_1/gru_cell_1/ReadVariableOp?my_model_1/gru_1/while?Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2?Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
UnicodeSplit/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
UnicodeSplit/Reshape/shape?
UnicodeSplit/ReshapeReshapeinputs#UnicodeSplit/Reshape/shape:output:0*
T0*
_output_shapes
:2
UnicodeSplit/Reshape?
UnicodeSplit/UnicodeDecodeUnicodeDecodeUnicodeSplit/Reshape:output:0*)
_output_shapes
::?????????*
input_encodingUTF-82
UnicodeSplit/UnicodeDecode?
=UnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2?
=UnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims/dim?
9UnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims
ExpandDims(UnicodeSplit/UnicodeDecode:char_values:0FUnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2;
9UnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/ShapeShapeBUnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2A
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape?
MUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2O
MUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_1?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_2?
GUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_sliceStridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0VUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_1:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2I
GUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_1?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_2?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1StridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_1:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_1?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_2?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2StridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_1:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2?
=UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/mulMulRUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_1:output:0RUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: 2?
=UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/mul?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_1?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_2?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3StridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_1:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/values_0PackAUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/mul:z:0*
N*
T0	*
_output_shapes
:2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/values_0?
EUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2G
EUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/axis?
@UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concatConcatV2RUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/values_0:output:0RUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_3:output:0NUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat/axis:output:0*
N*
T0	*
_output_shapes
:2B
@UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat?
AUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/ReshapeReshapeBUnicodeSplit/RaggedExpandDims/RaggedExpandDims/ExpandDims:output:0IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/concat:output:0*
T0*
Tshape0	*#
_output_shapes
:?????????2C
AUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Reshape?
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Q
OUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_1?
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
QUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_2?
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4StridedSliceHUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Shape:output:0XUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_1:output:0ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2K
IUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Const?
ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/ShapeShapeJUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Reshape:output:0*
T0*
_output_shapes
:*
out_type0	2\
ZUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/Shape?
hUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2j
hUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack?
jUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2l
jUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1?
jUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2l
jUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2?
bUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_sliceStridedSlicecUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/Shape:output:0qUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack:output:0sUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1:output:0sUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2d
bUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice?
{UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2}
{UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y?
yUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV2RUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/strided_slice_4:output:0?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: 2{
yUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/CastCast?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1Cast?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2?
?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1?
{UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRange?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast:y:0}UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2}
{UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range?
yUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMul?UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:0HUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Const:output:0*
T0	*#
_output_shapes
:?????????2{
yUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul?
DUnicodeSplit/UnicodeEncode/UnicodeEncode/UnicodeEncode/UnicodeEncodeUnicodeEncodeJUnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/Reshape:output:0}UnicodeSplit/UnicodeEncode/UnicodeEncode/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0*#
_output_shapes
:?????????*
output_encodingUTF-82F
DUnicodeSplit/UnicodeEncode/UnicodeEncode/UnicodeEncode/UnicodeEncode?
Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2\string_lookup_2_string_lookup_2_index_table_lookup_table_find_lookuptablefindv2_table_handleMUnicodeSplit/UnicodeEncode/UnicodeEncode/UnicodeEncode/UnicodeEncode:output:0]string_lookup_2_string_lookup_2_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2Q
Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2d
!string_lookup_2/assert_equal/NoOpNoOp*
_output_shapes
 2#
!string_lookup_2/assert_equal/NoOp?
string_lookup_2/IdentityIdentityXstring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_2/Identity?
string_lookup_2/Identity_1Identity'UnicodeSplit/UnicodeDecode:row_splits:0*
T0	*
_output_shapes
:2
string_lookup_2/Identity_1n
RaggedToTensor/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
RaggedToTensor/zerosw
RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2
RaggedToTensor/Const?
#RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorRaggedToTensor/Const:output:0!string_lookup_2/Identity:output:0RaggedToTensor/zeros:output:0#string_lookup_2/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2%
#RaggedToTensor/RaggedTensorToTensor?
6my_model_1/embedding_1/embedding_lookup/ReadVariableOpReadVariableOp?my_model_1_embedding_1_embedding_lookup_readvariableop_resource*
_output_shapes
:	C?*
dtype028
6my_model_1/embedding_1/embedding_lookup/ReadVariableOp?
,my_model_1/embedding_1/embedding_lookup/axisConst*I
_class?
=;loc:@my_model_1/embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2.
,my_model_1/embedding_1/embedding_lookup/axis?
'my_model_1/embedding_1/embedding_lookupGatherV2>my_model_1/embedding_1/embedding_lookup/ReadVariableOp:value:0,RaggedToTensor/RaggedTensorToTensor:result:05my_model_1/embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*I
_class?
=;loc:@my_model_1/embedding_1/embedding_lookup/ReadVariableOp*,
_output_shapes
:??????????2)
'my_model_1/embedding_1/embedding_lookup?
0my_model_1/embedding_1/embedding_lookup/IdentityIdentity0my_model_1/embedding_1/embedding_lookup:output:0*
T0*,
_output_shapes
:??????????22
0my_model_1/embedding_1/embedding_lookup/Identity?
my_model_1/gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2!
my_model_1/gru_1/transpose/perm?
my_model_1/gru_1/transpose	Transpose9my_model_1/embedding_1/embedding_lookup/Identity:output:0(my_model_1/gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
my_model_1/gru_1/transpose~
my_model_1/gru_1/ShapeShapemy_model_1/gru_1/transpose:y:0*
T0*
_output_shapes
:2
my_model_1/gru_1/Shape?
$my_model_1/gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$my_model_1/gru_1/strided_slice/stack?
&my_model_1/gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&my_model_1/gru_1/strided_slice/stack_1?
&my_model_1/gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&my_model_1/gru_1/strided_slice/stack_2?
my_model_1/gru_1/strided_sliceStridedSlicemy_model_1/gru_1/Shape:output:0-my_model_1/gru_1/strided_slice/stack:output:0/my_model_1/gru_1/strided_slice/stack_1:output:0/my_model_1/gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
my_model_1/gru_1/strided_slice?
,my_model_1/gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,my_model_1/gru_1/TensorArrayV2/element_shape?
my_model_1/gru_1/TensorArrayV2TensorListReserve5my_model_1/gru_1/TensorArrayV2/element_shape:output:0'my_model_1/gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02 
my_model_1/gru_1/TensorArrayV2?
Fmy_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2H
Fmy_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
8my_model_1/gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormy_model_1/gru_1/transpose:y:0Omy_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02:
8my_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor?
&my_model_1/gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&my_model_1/gru_1/strided_slice_1/stack?
(my_model_1/gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(my_model_1/gru_1/strided_slice_1/stack_1?
(my_model_1/gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(my_model_1/gru_1/strided_slice_1/stack_2?
 my_model_1/gru_1/strided_slice_1StridedSlicemy_model_1/gru_1/transpose:y:0/my_model_1/gru_1/strided_slice_1/stack:output:01my_model_1/gru_1/strided_slice_1/stack_1:output:01my_model_1/gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2"
 my_model_1/gru_1/strided_slice_1?
*my_model_1/gru_1/gru_cell_1/ReadVariableOpReadVariableOp3my_model_1_gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*my_model_1/gru_1/gru_cell_1/ReadVariableOp?
#my_model_1/gru_1/gru_cell_1/unstackUnpack2my_model_1/gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2%
#my_model_1/gru_1/gru_cell_1/unstack?
1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp:my_model_1_gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp?
"my_model_1/gru_1/gru_cell_1/MatMulMatMul)my_model_1/gru_1/strided_slice_1:output:09my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"my_model_1/gru_1/gru_cell_1/MatMul?
#my_model_1/gru_1/gru_cell_1/BiasAddBiasAdd,my_model_1/gru_1/gru_cell_1/MatMul:product:0,my_model_1/gru_1/gru_cell_1/unstack:output:0*
T0*
_output_shapes
:	?2%
#my_model_1/gru_1/gru_cell_1/BiasAdd?
!my_model_1/gru_1/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2#
!my_model_1/gru_1/gru_cell_1/Const?
+my_model_1/gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+my_model_1/gru_1/gru_cell_1/split/split_dim?
!my_model_1/gru_1/gru_cell_1/splitSplit4my_model_1/gru_1/gru_cell_1/split/split_dim:output:0,my_model_1/gru_1/gru_cell_1/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2#
!my_model_1/gru_1/gru_cell_1/split?
3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp<my_model_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp?
$my_model_1/gru_1/gru_cell_1/MatMul_1MatMulstates;my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2&
$my_model_1/gru_1/gru_cell_1/MatMul_1?
%my_model_1/gru_1/gru_cell_1/BiasAdd_1BiasAdd.my_model_1/gru_1/gru_cell_1/MatMul_1:product:0,my_model_1/gru_1/gru_cell_1/unstack:output:1*
T0*
_output_shapes
:	?2'
%my_model_1/gru_1/gru_cell_1/BiasAdd_1?
#my_model_1/gru_1/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2%
#my_model_1/gru_1/gru_cell_1/Const_1?
-my_model_1/gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-my_model_1/gru_1/gru_cell_1/split_1/split_dim?
#my_model_1/gru_1/gru_cell_1/split_1SplitV.my_model_1/gru_1/gru_cell_1/BiasAdd_1:output:0,my_model_1/gru_1/gru_cell_1/Const_1:output:06my_model_1/gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*5
_output_shapes#
!:	?:	?:	?*
	num_split2%
#my_model_1/gru_1/gru_cell_1/split_1?
my_model_1/gru_1/gru_cell_1/addAddV2*my_model_1/gru_1/gru_cell_1/split:output:0,my_model_1/gru_1/gru_cell_1/split_1:output:0*
T0*
_output_shapes
:	?2!
my_model_1/gru_1/gru_cell_1/add?
#my_model_1/gru_1/gru_cell_1/SigmoidSigmoid#my_model_1/gru_1/gru_cell_1/add:z:0*
T0*
_output_shapes
:	?2%
#my_model_1/gru_1/gru_cell_1/Sigmoid?
!my_model_1/gru_1/gru_cell_1/add_1AddV2*my_model_1/gru_1/gru_cell_1/split:output:1,my_model_1/gru_1/gru_cell_1/split_1:output:1*
T0*
_output_shapes
:	?2#
!my_model_1/gru_1/gru_cell_1/add_1?
%my_model_1/gru_1/gru_cell_1/Sigmoid_1Sigmoid%my_model_1/gru_1/gru_cell_1/add_1:z:0*
T0*
_output_shapes
:	?2'
%my_model_1/gru_1/gru_cell_1/Sigmoid_1?
my_model_1/gru_1/gru_cell_1/mulMul)my_model_1/gru_1/gru_cell_1/Sigmoid_1:y:0,my_model_1/gru_1/gru_cell_1/split_1:output:2*
T0*
_output_shapes
:	?2!
my_model_1/gru_1/gru_cell_1/mul?
!my_model_1/gru_1/gru_cell_1/add_2AddV2*my_model_1/gru_1/gru_cell_1/split:output:2#my_model_1/gru_1/gru_cell_1/mul:z:0*
T0*
_output_shapes
:	?2#
!my_model_1/gru_1/gru_cell_1/add_2?
 my_model_1/gru_1/gru_cell_1/TanhTanh%my_model_1/gru_1/gru_cell_1/add_2:z:0*
T0*
_output_shapes
:	?2"
 my_model_1/gru_1/gru_cell_1/Tanh?
!my_model_1/gru_1/gru_cell_1/mul_1Mul'my_model_1/gru_1/gru_cell_1/Sigmoid:y:0states*
T0*
_output_shapes
:	?2#
!my_model_1/gru_1/gru_cell_1/mul_1?
!my_model_1/gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!my_model_1/gru_1/gru_cell_1/sub/x?
my_model_1/gru_1/gru_cell_1/subSub*my_model_1/gru_1/gru_cell_1/sub/x:output:0'my_model_1/gru_1/gru_cell_1/Sigmoid:y:0*
T0*
_output_shapes
:	?2!
my_model_1/gru_1/gru_cell_1/sub?
!my_model_1/gru_1/gru_cell_1/mul_2Mul#my_model_1/gru_1/gru_cell_1/sub:z:0$my_model_1/gru_1/gru_cell_1/Tanh:y:0*
T0*
_output_shapes
:	?2#
!my_model_1/gru_1/gru_cell_1/mul_2?
!my_model_1/gru_1/gru_cell_1/add_3AddV2%my_model_1/gru_1/gru_cell_1/mul_1:z:0%my_model_1/gru_1/gru_cell_1/mul_2:z:0*
T0*
_output_shapes
:	?2#
!my_model_1/gru_1/gru_cell_1/add_3?
.my_model_1/gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      20
.my_model_1/gru_1/TensorArrayV2_1/element_shape?
 my_model_1/gru_1/TensorArrayV2_1TensorListReserve7my_model_1/gru_1/TensorArrayV2_1/element_shape:output:0'my_model_1/gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02"
 my_model_1/gru_1/TensorArrayV2_1p
my_model_1/gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
my_model_1/gru_1/time?
)my_model_1/gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)my_model_1/gru_1/while/maximum_iterations?
#my_model_1/gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2%
#my_model_1/gru_1/while/loop_counter?
my_model_1/gru_1/whileWhile,my_model_1/gru_1/while/loop_counter:output:02my_model_1/gru_1/while/maximum_iterations:output:0my_model_1/gru_1/time:output:0)my_model_1/gru_1/TensorArrayV2_1:handle:0states'my_model_1/gru_1/strided_slice:output:0Hmy_model_1/gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:03my_model_1_gru_1_gru_cell_1_readvariableop_resource:my_model_1_gru_1_gru_cell_1_matmul_readvariableop_resource<my_model_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*-
body%R#
!my_model_1_gru_1_while_body_41213*-
cond%R#
!my_model_1_gru_1_while_cond_41212*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
my_model_1/gru_1/while?
Amy_model_1/gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2C
Amy_model_1/gru_1/TensorArrayV2Stack/TensorListStack/element_shape?
3my_model_1/gru_1/TensorArrayV2Stack/TensorListStackTensorListStackmy_model_1/gru_1/while:output:3Jmy_model_1/gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype025
3my_model_1/gru_1/TensorArrayV2Stack/TensorListStack?
&my_model_1/gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2(
&my_model_1/gru_1/strided_slice_2/stack?
(my_model_1/gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(my_model_1/gru_1/strided_slice_2/stack_1?
(my_model_1/gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(my_model_1/gru_1/strided_slice_2/stack_2?
 my_model_1/gru_1/strided_slice_2StridedSlice<my_model_1/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0/my_model_1/gru_1/strided_slice_2/stack:output:01my_model_1/gru_1/strided_slice_2/stack_1:output:01my_model_1/gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2"
 my_model_1/gru_1/strided_slice_2?
!my_model_1/gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!my_model_1/gru_1/transpose_1/perm?
my_model_1/gru_1/transpose_1	Transpose<my_model_1/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0*my_model_1/gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
my_model_1/gru_1/transpose_1?
my_model_1/gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
my_model_1/gru_1/runtime?
+my_model_1/dense_1/Tensordot/ReadVariableOpReadVariableOp4my_model_1_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	?C*
dtype02-
+my_model_1/dense_1/Tensordot/ReadVariableOp?
!my_model_1/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!my_model_1/dense_1/Tensordot/axes?
!my_model_1/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!my_model_1/dense_1/Tensordot/free?
"my_model_1/dense_1/Tensordot/ShapeShape my_model_1/gru_1/transpose_1:y:0*
T0*
_output_shapes
:2$
"my_model_1/dense_1/Tensordot/Shape?
*my_model_1/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*my_model_1/dense_1/Tensordot/GatherV2/axis?
%my_model_1/dense_1/Tensordot/GatherV2GatherV2+my_model_1/dense_1/Tensordot/Shape:output:0*my_model_1/dense_1/Tensordot/free:output:03my_model_1/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%my_model_1/dense_1/Tensordot/GatherV2?
,my_model_1/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,my_model_1/dense_1/Tensordot/GatherV2_1/axis?
'my_model_1/dense_1/Tensordot/GatherV2_1GatherV2+my_model_1/dense_1/Tensordot/Shape:output:0*my_model_1/dense_1/Tensordot/axes:output:05my_model_1/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'my_model_1/dense_1/Tensordot/GatherV2_1?
"my_model_1/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"my_model_1/dense_1/Tensordot/Const?
!my_model_1/dense_1/Tensordot/ProdProd.my_model_1/dense_1/Tensordot/GatherV2:output:0+my_model_1/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!my_model_1/dense_1/Tensordot/Prod?
$my_model_1/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$my_model_1/dense_1/Tensordot/Const_1?
#my_model_1/dense_1/Tensordot/Prod_1Prod0my_model_1/dense_1/Tensordot/GatherV2_1:output:0-my_model_1/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#my_model_1/dense_1/Tensordot/Prod_1?
(my_model_1/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(my_model_1/dense_1/Tensordot/concat/axis?
#my_model_1/dense_1/Tensordot/concatConcatV2*my_model_1/dense_1/Tensordot/free:output:0*my_model_1/dense_1/Tensordot/axes:output:01my_model_1/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#my_model_1/dense_1/Tensordot/concat?
"my_model_1/dense_1/Tensordot/stackPack*my_model_1/dense_1/Tensordot/Prod:output:0,my_model_1/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"my_model_1/dense_1/Tensordot/stack?
&my_model_1/dense_1/Tensordot/transpose	Transpose my_model_1/gru_1/transpose_1:y:0,my_model_1/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2(
&my_model_1/dense_1/Tensordot/transpose?
$my_model_1/dense_1/Tensordot/ReshapeReshape*my_model_1/dense_1/Tensordot/transpose:y:0+my_model_1/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2&
$my_model_1/dense_1/Tensordot/Reshape?
#my_model_1/dense_1/Tensordot/MatMulMatMul-my_model_1/dense_1/Tensordot/Reshape:output:03my_model_1/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2%
#my_model_1/dense_1/Tensordot/MatMul?
$my_model_1/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:C2&
$my_model_1/dense_1/Tensordot/Const_2?
*my_model_1/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*my_model_1/dense_1/Tensordot/concat_1/axis?
%my_model_1/dense_1/Tensordot/concat_1ConcatV2.my_model_1/dense_1/Tensordot/GatherV2:output:0-my_model_1/dense_1/Tensordot/Const_2:output:03my_model_1/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%my_model_1/dense_1/Tensordot/concat_1?
my_model_1/dense_1/TensordotReshape-my_model_1/dense_1/Tensordot/MatMul:product:0.my_model_1/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????C2
my_model_1/dense_1/Tensordot?
)my_model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp2my_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02+
)my_model_1/dense_1/BiasAdd/ReadVariableOp?
my_model_1/dense_1/BiasAddBiasAdd%my_model_1/dense_1/Tensordot:output:01my_model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????C2
my_model_1/dense_1/BiasAdd
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1?
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2?
strided_sliceStridedSlice#my_model_1/dense_1/BiasAdd:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:C*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
	truediv/yr
truedivRealDivstrided_slice:output:0truediv/y:output:0*
T0*
_output_shapes

:C2	
truedivP
addAddV2truediv:z:0add_y*
T0*
_output_shapes

:C2
add?
#categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :2%
#categorical/Multinomial/num_samples?
categorical/MultinomialMultinomialadd:z:0,categorical/Multinomial/num_samples:output:0*
T0*
_output_shapes

:2
categorical/Multinomial?
SqueezeSqueeze categorical/Multinomial:output:0*
T0	*
_output_shapes
:*
squeeze_dims

?????????2	
Squeeze?
Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2\string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handleSqueeze:output:0]string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0*
_output_shapes
:2Q
Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
IdentityIdentityXstring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*^my_model_1/dense_1/BiasAdd/ReadVariableOp,^my_model_1/dense_1/Tensordot/ReadVariableOp7^my_model_1/embedding_1/embedding_lookup/ReadVariableOp2^my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp4^my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp+^my_model_1/gru_1/gru_cell_1/ReadVariableOp^my_model_1/gru_1/whileP^string_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2P^string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*
_output_shapes
:2

Identity?

Identity_1Identitymy_model_1/gru_1/while:output:4*^my_model_1/dense_1/BiasAdd/ReadVariableOp,^my_model_1/dense_1/Tensordot/ReadVariableOp7^my_model_1/embedding_1/embedding_lookup/ReadVariableOp2^my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp4^my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp+^my_model_1/gru_1/gru_cell_1/ReadVariableOp^my_model_1/gru_1/whileP^string_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2P^string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*
_output_shapes
:	?2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*N
_input_shapes=
;::	?:: :::::::C:: 2V
)my_model_1/dense_1/BiasAdd/ReadVariableOp)my_model_1/dense_1/BiasAdd/ReadVariableOp2Z
+my_model_1/dense_1/Tensordot/ReadVariableOp+my_model_1/dense_1/Tensordot/ReadVariableOp2p
6my_model_1/embedding_1/embedding_lookup/ReadVariableOp6my_model_1/embedding_1/embedding_lookup/ReadVariableOp2f
1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp1my_model_1/gru_1/gru_cell_1/MatMul/ReadVariableOp2j
3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp3my_model_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp2X
*my_model_1/gru_1/gru_cell_1/ReadVariableOp*my_model_1/gru_1/gru_cell_1/ReadVariableOp20
my_model_1/gru_1/whilemy_model_1/gru_1/while2?
Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV2Ostring_lookup_2/string_lookup_2_index_table_lookup_table_find/LookupTableFindV22?
Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2Ostring_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:B >

_output_shapes
:
 
_user_specified_nameinputs:GC

_output_shapes
:	?
 
_user_specified_namestates:

_output_shapes
: : 


_output_shapes
:C:

_output_shapes
: 
?
?
while_cond_49285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_49285___redundant_placeholder03
/while_while_cond_49285___redundant_placeholder13
/while_while_cond_49285___redundant_placeholder23
/while_while_cond_49285___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?Q
?
@__inference_gru_1_layer_call_and_return_conditional_losses_47957

inputs
initial_state&
"gru_cell_1_readvariableop_resource-
)gru_cell_1_matmul_readvariableop_resource/
+gru_cell_1_matmul_1_readvariableop_resource
identity

identity_1?? gru_cell_1/MatMul/ReadVariableOp?"gru_cell_1/MatMul_1/ReadVariableOp?gru_cell_1/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1?
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_1/ReadVariableOp?
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_1/unstack?
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_1/MatMul/ReadVariableOp?
gru_cell_1/MatMulMatMulstrided_slice_1:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul?
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAddf
gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_1/Const?
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split/split_dim?
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split?
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_1/MatMul_1/ReadVariableOp?
gru_cell_1/MatMul_1MatMulinitial_state*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul_1?
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAdd_1}
gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_1/Const_1?
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split_1/split_dim?
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const_1:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split_1?
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid?
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_1?
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid_1?
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul?
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Tanh?
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0initial_state*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_1i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_1/sub/x?
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/sub?
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_2?
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_statestrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_47866*
condR
while_cond_47865*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*,
_output_shapes
:?????????d?2

Identity?

Identity_1Identitywhile:output:4!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*K
_input_shapes:
8:?????????d?:??????????:::2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:WS
(
_output_shapes
:??????????
'
_user_specified_nameinitial_state
?
?
*__inference_my_model_1_layer_call_fn_48799
input_1	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dC*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_my_model_1_layer_call_and_return_conditional_losses_483082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?	
?
%__inference_gru_1_layer_call_fn_49539

inputs
initial_state_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinitial_state_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_479572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????d?2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*K
_input_shapes:
8:?????????d?:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:YU
(
_output_shapes
:??????????
)
_user_specified_nameinitial_state/0
?G
?
while_body_48014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_1_readvariableop_resource_05
1while_gru_cell_1_matmul_readvariableop_resource_07
3while_gru_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_1_readvariableop_resource3
/while_gru_cell_1_matmul_readvariableop_resource5
1while_gru_cell_1_matmul_1_readvariableop_resource??&while/gru_cell_1/MatMul/ReadVariableOp?(while/gru_cell_1/MatMul_1/ReadVariableOp?while/gru_cell_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_1/ReadVariableOp?
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_1/unstack?
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_1/MatMul/ReadVariableOp?
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul?
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAddr
while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_1/Const?
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_1/split/split_dim?
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split?
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_1/MatMul_1/ReadVariableOp?
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul_1?
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAdd_1?
while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_1/Const_1?
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_1/split_1/split_dim?
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0!while/gru_cell_1/Const_1:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split_1?
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add?
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid?
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_1?
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid_1?
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul?
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_2?
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Tanh?
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_1u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_1/sub/x?
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/sub?
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_2?
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?Q
?
@__inference_gru_1_layer_call_and_return_conditional_losses_48105

inputs
initial_state&
"gru_cell_1_readvariableop_resource-
)gru_cell_1_matmul_readvariableop_resource/
+gru_cell_1_matmul_1_readvariableop_resource
identity

identity_1?? gru_cell_1/MatMul/ReadVariableOp?"gru_cell_1/MatMul_1/ReadVariableOp?gru_cell_1/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1?
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_1/ReadVariableOp?
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_1/unstack?
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_1/MatMul/ReadVariableOp?
gru_cell_1/MatMulMatMulstrided_slice_1:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul?
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAddf
gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_1/Const?
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split/split_dim?
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split?
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_1/MatMul_1/ReadVariableOp?
gru_cell_1/MatMul_1MatMulinitial_state*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul_1?
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAdd_1}
gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_1/Const_1?
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split_1/split_dim?
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const_1:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split_1?
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid?
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_1?
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid_1?
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul?
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Tanh?
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0initial_state*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_1i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_1/sub/x?
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/sub?
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_2?
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_statestrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_48014*
condR
while_cond_48013*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*,
_output_shapes
:?????????d?2

Identity?

Identity_1Identitywhile:output:4!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*K
_input_shapes:
8:?????????d?:??????????:::2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:WS
(
_output_shapes
:??????????
'
_user_specified_nameinitial_state
?
?
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_50048

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:??????????:??????????:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
*
__inference_<lambda>_50135
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
while_cond_49621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_49621___redundant_placeholder03
/while_while_cond_49621___redundant_placeholder13
/while_while_cond_49621___redundant_placeholder23
/while_while_cond_49621___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?
E__inference_my_model_1_layer_call_and_return_conditional_losses_48575
input_1	8
4embedding_1_embedding_lookup_readvariableop_resource,
(gru_1_gru_cell_1_readvariableop_resource3
/gru_1_gru_cell_1_matmul_readvariableop_resource5
1gru_1_gru_cell_1_matmul_1_readvariableop_resource-
)dense_1_tensordot_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?+embedding_1/embedding_lookup/ReadVariableOp?&gru_1/gru_cell_1/MatMul/ReadVariableOp?(gru_1/gru_cell_1/MatMul_1/ReadVariableOp?gru_1/gru_cell_1/ReadVariableOp?gru_1/while?
+embedding_1/embedding_lookup/ReadVariableOpReadVariableOp4embedding_1_embedding_lookup_readvariableop_resource*
_output_shapes
:	C?*
dtype02-
+embedding_1/embedding_lookup/ReadVariableOp?
!embedding_1/embedding_lookup/axisConst*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_1/embedding_lookup/axis?
embedding_1/embedding_lookupGatherV23embedding_1/embedding_lookup/ReadVariableOp:value:0input_1*embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*,
_output_shapes
:?????????d?2
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*,
_output_shapes
:?????????d?2'
%embedding_1/embedding_lookup/Identityl
ShapeShape.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose/perm?
gru_1/transpose	Transpose.embedding_1/embedding_lookup/Identity:output:0gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:d??????????2
gru_1/transpose]
gru_1/ShapeShapegru_1/transpose:y:0*
T0*
_output_shapes
:2
gru_1/Shape?
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice/stack?
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_1?
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_2?
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_1/strided_slice?
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_1/TensorArrayV2/element_shape?
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2?
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_1/TensorArrayUnstack/TensorListFromTensor?
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_1/stack?
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_1?
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_2?
gru_1/strided_slice_1StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_1/strided_slice_1?
gru_1/gru_cell_1/ReadVariableOpReadVariableOp(gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_1/gru_cell_1/ReadVariableOp?
gru_1/gru_cell_1/unstackUnpack'gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_1/gru_cell_1/unstack?
&gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp/gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&gru_1/gru_cell_1/MatMul/ReadVariableOp?
gru_1/gru_cell_1/MatMulMatMulgru_1/strided_slice_1:output:0.gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/MatMul?
gru_1/gru_cell_1/BiasAddBiasAdd!gru_1/gru_cell_1/MatMul:product:0!gru_1/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/BiasAddr
gru_1/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/gru_cell_1/Const?
 gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_1/gru_cell_1/split/split_dim?
gru_1/gru_cell_1/splitSplit)gru_1/gru_cell_1/split/split_dim:output:0!gru_1/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/gru_cell_1/split?
(gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp1gru_1_gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp?
gru_1/gru_cell_1/MatMul_1MatMulzeros:output:00gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/MatMul_1?
gru_1/gru_cell_1/BiasAdd_1BiasAdd#gru_1/gru_cell_1/MatMul_1:product:0!gru_1/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/BiasAdd_1?
gru_1/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_1/gru_cell_1/Const_1?
"gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_1/gru_cell_1/split_1/split_dim?
gru_1/gru_cell_1/split_1SplitV#gru_1/gru_cell_1/BiasAdd_1:output:0!gru_1/gru_cell_1/Const_1:output:0+gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/gru_cell_1/split_1?
gru_1/gru_cell_1/addAddV2gru_1/gru_cell_1/split:output:0!gru_1/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add?
gru_1/gru_cell_1/SigmoidSigmoidgru_1/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Sigmoid?
gru_1/gru_cell_1/add_1AddV2gru_1/gru_cell_1/split:output:1!gru_1/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_1?
gru_1/gru_cell_1/Sigmoid_1Sigmoidgru_1/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Sigmoid_1?
gru_1/gru_cell_1/mulMulgru_1/gru_cell_1/Sigmoid_1:y:0!gru_1/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul?
gru_1/gru_cell_1/add_2AddV2gru_1/gru_cell_1/split:output:2gru_1/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_2?
gru_1/gru_cell_1/TanhTanhgru_1/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/Tanh?
gru_1/gru_cell_1/mul_1Mulgru_1/gru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul_1u
gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_1/gru_cell_1/sub/x?
gru_1/gru_cell_1/subSubgru_1/gru_cell_1/sub/x:output:0gru_1/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/sub?
gru_1/gru_cell_1/mul_2Mulgru_1/gru_cell_1/sub:z:0gru_1/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/mul_2?
gru_1/gru_cell_1/add_3AddV2gru_1/gru_cell_1/mul_1:z:0gru_1/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/gru_cell_1/add_3?
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2%
#gru_1/TensorArrayV2_1/element_shape?
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0gru_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2_1Z

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_1/time?
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_1/while/maximum_iterationsv
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_1/while/loop_counter?
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0zeros:output:0gru_1/strided_slice:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_1_gru_cell_1_readvariableop_resource/gru_1_gru_cell_1_matmul_readvariableop_resource1gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*"
bodyR
gru_1_while_body_48459*"
condR
gru_1_while_cond_48458*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_1/while?
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   28
6gru_1/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype02*
(gru_1/TensorArrayV2Stack/TensorListStack?
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_1/strided_slice_2/stack?
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_2/stack_1?
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_2/stack_2?
gru_1/strided_slice_2StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_1/strided_slice_2?
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose_1/perm?
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?2
gru_1/transpose_1r
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_1/runtime?
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes
:	?C*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes?
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freew
dense_1/Tensordot/ShapeShapegru_1/transpose_1:y:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape?
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2?
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod?
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1?
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack?
dense_1/Tensordot/transpose	Transposegru_1/transpose_1:y:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????d?2
dense_1/Tensordot/transpose?
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_1/Tensordot/Reshape?
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
dense_1/Tensordot/MatMul?
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:C2
dense_1/Tensordot/Const_2?
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dC2
dense_1/Tensordot?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dC2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp,^embedding_1/embedding_lookup/ReadVariableOp'^gru_1/gru_cell_1/MatMul/ReadVariableOp)^gru_1/gru_cell_1/MatMul_1/ReadVariableOp ^gru_1/gru_cell_1/ReadVariableOp^gru_1/while*
T0*+
_output_shapes
:?????????dC2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????d::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2Z
+embedding_1/embedding_lookup/ReadVariableOp+embedding_1/embedding_lookup/ReadVariableOp2P
&gru_1/gru_cell_1/MatMul/ReadVariableOp&gru_1/gru_cell_1/MatMul/ReadVariableOp2T
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp(gru_1/gru_cell_1/MatMul_1/ReadVariableOp2B
gru_1/gru_cell_1/ReadVariableOpgru_1/gru_cell_1/ReadVariableOp2
gru_1/whilegru_1/while:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?	
?
%__inference_gru_1_layer_call_fn_49899
inputs_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:???????????????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_477612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?Q
?
@__inference_gru_1_layer_call_and_return_conditional_losses_49377

inputs
initial_state_0&
"gru_cell_1_readvariableop_resource-
)gru_cell_1_matmul_readvariableop_resource/
+gru_cell_1_matmul_1_readvariableop_resource
identity

identity_1?? gru_cell_1/MatMul/ReadVariableOp?"gru_cell_1/MatMul_1/ReadVariableOp?gru_cell_1/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1?
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_1/ReadVariableOp?
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_1/unstack?
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_1/MatMul/ReadVariableOp?
gru_cell_1/MatMulMatMulstrided_slice_1:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul?
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAddf
gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_1/Const?
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split/split_dim?
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split?
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_1/MatMul_1/ReadVariableOp?
gru_cell_1/MatMul_1MatMulinitial_state_0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul_1?
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAdd_1}
gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_1/Const_1?
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split_1/split_dim?
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const_1:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split_1?
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid?
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_1?
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid_1?
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul?
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Tanh?
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0initial_state_0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_1i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_1/sub/x?
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/sub?
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_2?
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_state_0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_49286*
condR
while_cond_49285*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*,
_output_shapes
:?????????d?2

Identity?

Identity_1Identitywhile:output:4!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*K
_input_shapes:
8:?????????d?:??????????:::2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:YU
(
_output_shapes
:??????????
)
_user_specified_nameinitial_state/0
?!
?
while_body_47696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_gru_cell_1_47718_0
while_gru_cell_1_47720_0
while_gru_cell_1_47722_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_1_47718
while_gru_cell_1_47720
while_gru_cell_1_47722??(while/gru_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/gru_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_1_47718_0while_gru_cell_1_47720_0while_gru_cell_1_47722_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_473142*
(while/gru_cell_1/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity1while/gru_cell_1/StatefulPartitionedCall:output:1)^while/gru_cell_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4"2
while_gru_cell_1_47718while_gru_cell_1_47718_0"2
while_gru_cell_1_47720while_gru_cell_1_47720_0"2
while_gru_cell_1_47722while_gru_cell_1_47722_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2T
(while/gru_cell_1/StatefulPartitionedCall(while/gru_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
*__inference_gru_cell_1_layer_call_fn_50076

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_473142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?P
?
gru_1_while_body_48873(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2%
!gru_1_while_gru_1_strided_slice_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_04
0gru_1_while_gru_cell_1_readvariableop_resource_0;
7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0=
9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0
gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4#
gru_1_while_gru_1_strided_slicea
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor2
.gru_1_while_gru_cell_1_readvariableop_resource9
5gru_1_while_gru_cell_1_matmul_readvariableop_resource;
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource??,gru_1/while/gru_cell_1/MatMul/ReadVariableOp?.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?%gru_1/while/gru_cell_1/ReadVariableOp?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype021
/gru_1/while/TensorArrayV2Read/TensorListGetItem?
%gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp0gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%gru_1/while/gru_cell_1/ReadVariableOp?
gru_1/while/gru_cell_1/unstackUnpack-gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2 
gru_1/while/gru_cell_1/unstack?
,gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp?
gru_1/while/gru_cell_1/MatMulMatMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:04gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/MatMul?
gru_1/while/gru_cell_1/BiasAddBiasAdd'gru_1/while/gru_cell_1/MatMul:product:0'gru_1/while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2 
gru_1/while/gru_cell_1/BiasAdd~
gru_1/while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/gru_cell_1/Const?
&gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_1/while/gru_cell_1/split/split_dim?
gru_1/while/gru_cell_1/splitSplit/gru_1/while/gru_cell_1/split/split_dim:output:0'gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/while/gru_cell_1/split?
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?
gru_1/while/gru_cell_1/MatMul_1MatMulgru_1_while_placeholder_26gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_1/while/gru_cell_1/MatMul_1?
 gru_1/while/gru_cell_1/BiasAdd_1BiasAdd)gru_1/while/gru_cell_1/MatMul_1:product:0'gru_1/while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2"
 gru_1/while/gru_cell_1/BiasAdd_1?
gru_1/while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2 
gru_1/while/gru_cell_1/Const_1?
(gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_1/while/gru_cell_1/split_1/split_dim?
gru_1/while/gru_cell_1/split_1SplitV)gru_1/while/gru_cell_1/BiasAdd_1:output:0'gru_1/while/gru_cell_1/Const_1:output:01gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_1/while/gru_cell_1/split_1?
gru_1/while/gru_cell_1/addAddV2%gru_1/while/gru_cell_1/split:output:0'gru_1/while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add?
gru_1/while/gru_cell_1/SigmoidSigmoidgru_1/while/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2 
gru_1/while/gru_cell_1/Sigmoid?
gru_1/while/gru_cell_1/add_1AddV2%gru_1/while/gru_cell_1/split:output:1'gru_1/while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_1?
 gru_1/while/gru_cell_1/Sigmoid_1Sigmoid gru_1/while/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 gru_1/while/gru_cell_1/Sigmoid_1?
gru_1/while/gru_cell_1/mulMul$gru_1/while/gru_cell_1/Sigmoid_1:y:0'gru_1/while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul?
gru_1/while/gru_cell_1/add_2AddV2%gru_1/while/gru_cell_1/split:output:2gru_1/while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_2?
gru_1/while/gru_cell_1/TanhTanh gru_1/while/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/Tanh?
gru_1/while/gru_cell_1/mul_1Mul"gru_1/while/gru_cell_1/Sigmoid:y:0gru_1_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul_1?
gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_1/while/gru_cell_1/sub/x?
gru_1/while/gru_cell_1/subSub%gru_1/while/gru_cell_1/sub/x:output:0"gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/sub?
gru_1/while/gru_cell_1/mul_2Mulgru_1/while/gru_cell_1/sub:z:0gru_1/while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul_2?
gru_1/while/gru_cell_1/add_3AddV2 gru_1/while/gru_cell_1/mul_1:z:0 gru_1/while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_3?
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1gru_1_while_placeholder gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_1/while/TensorArrayV2Write/TensorListSetItemh
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add/y?
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/addl
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add_1/y?
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/add_1?
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity?
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_1?
gru_1/while/Identity_2Identitygru_1/while/add:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_2?
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_3?
gru_1/while/Identity_4Identity gru_1/while/gru_cell_1/add_3:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
gru_1/while/Identity_4"D
gru_1_while_gru_1_strided_slice!gru_1_while_gru_1_strided_slice_0"t
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"p
5gru_1_while_gru_cell_1_matmul_readvariableop_resource7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"b
.gru_1_while_gru_cell_1_readvariableop_resource0gru_1_while_gru_cell_1_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"?
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2\
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp,gru_1/while/gru_cell_1/MatMul/ReadVariableOp2`
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2N
%gru_1/while/gru_cell_1/ReadVariableOp%gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?]
?
@__inference_gru_1_layer_call_and_return_conditional_losses_49873
inputs_0&
"gru_cell_1_readvariableop_resource-
)gru_cell_1_matmul_readvariableop_resource/
+gru_cell_1_matmul_1_readvariableop_resource
identity

identity_1?? gru_cell_1/MatMul/ReadVariableOp?"gru_cell_1/MatMul_1/ReadVariableOp?gru_cell_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_1/ReadVariableOp?
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_1/unstack?
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_1/MatMul/ReadVariableOp?
gru_cell_1/MatMulMatMulstrided_slice_2:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul?
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAddf
gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_1/Const?
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split/split_dim?
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split?
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_1/MatMul_1/ReadVariableOp?
gru_cell_1/MatMul_1MatMulzeros:output:0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/MatMul_1?
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/BiasAdd_1}
gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_1/Const_1?
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_1/split_1/split_dim?
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const_1:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_1/split_1?
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid?
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_1?
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Sigmoid_1?
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul?
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/Tanh?
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_1i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_1/sub/x?
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/sub?
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/mul_2?
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_1/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_49782*
condR
while_cond_49781*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identitywhile:output:4!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:???????????????????:::2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?P
?
gru_1_while_body_48459(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2%
!gru_1_while_gru_1_strided_slice_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_04
0gru_1_while_gru_cell_1_readvariableop_resource_0;
7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0=
9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0
gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4#
gru_1_while_gru_1_strided_slicea
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor2
.gru_1_while_gru_cell_1_readvariableop_resource9
5gru_1_while_gru_cell_1_matmul_readvariableop_resource;
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource??,gru_1/while/gru_cell_1/MatMul/ReadVariableOp?.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?%gru_1/while/gru_cell_1/ReadVariableOp?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype021
/gru_1/while/TensorArrayV2Read/TensorListGetItem?
%gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp0gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%gru_1/while/gru_cell_1/ReadVariableOp?
gru_1/while/gru_cell_1/unstackUnpack-gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2 
gru_1/while/gru_cell_1/unstack?
,gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp?
gru_1/while/gru_cell_1/MatMulMatMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:04gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/MatMul?
gru_1/while/gru_cell_1/BiasAddBiasAdd'gru_1/while/gru_cell_1/MatMul:product:0'gru_1/while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2 
gru_1/while/gru_cell_1/BiasAdd~
gru_1/while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/gru_cell_1/Const?
&gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_1/while/gru_cell_1/split/split_dim?
gru_1/while/gru_cell_1/splitSplit/gru_1/while/gru_cell_1/split/split_dim:output:0'gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_1/while/gru_cell_1/split?
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp?
gru_1/while/gru_cell_1/MatMul_1MatMulgru_1_while_placeholder_26gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_1/while/gru_cell_1/MatMul_1?
 gru_1/while/gru_cell_1/BiasAdd_1BiasAdd)gru_1/while/gru_cell_1/MatMul_1:product:0'gru_1/while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2"
 gru_1/while/gru_cell_1/BiasAdd_1?
gru_1/while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2 
gru_1/while/gru_cell_1/Const_1?
(gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_1/while/gru_cell_1/split_1/split_dim?
gru_1/while/gru_cell_1/split_1SplitV)gru_1/while/gru_cell_1/BiasAdd_1:output:0'gru_1/while/gru_cell_1/Const_1:output:01gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_1/while/gru_cell_1/split_1?
gru_1/while/gru_cell_1/addAddV2%gru_1/while/gru_cell_1/split:output:0'gru_1/while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add?
gru_1/while/gru_cell_1/SigmoidSigmoidgru_1/while/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2 
gru_1/while/gru_cell_1/Sigmoid?
gru_1/while/gru_cell_1/add_1AddV2%gru_1/while/gru_cell_1/split:output:1'gru_1/while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_1?
 gru_1/while/gru_cell_1/Sigmoid_1Sigmoid gru_1/while/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 gru_1/while/gru_cell_1/Sigmoid_1?
gru_1/while/gru_cell_1/mulMul$gru_1/while/gru_cell_1/Sigmoid_1:y:0'gru_1/while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul?
gru_1/while/gru_cell_1/add_2AddV2%gru_1/while/gru_cell_1/split:output:2gru_1/while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_2?
gru_1/while/gru_cell_1/TanhTanh gru_1/while/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/Tanh?
gru_1/while/gru_cell_1/mul_1Mul"gru_1/while/gru_cell_1/Sigmoid:y:0gru_1_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul_1?
gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_1/while/gru_cell_1/sub/x?
gru_1/while/gru_cell_1/subSub%gru_1/while/gru_cell_1/sub/x:output:0"gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/sub?
gru_1/while/gru_cell_1/mul_2Mulgru_1/while/gru_cell_1/sub:z:0gru_1/while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/mul_2?
gru_1/while/gru_cell_1/add_3AddV2 gru_1/while/gru_cell_1/mul_1:z:0 gru_1/while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_1/while/gru_cell_1/add_3?
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1gru_1_while_placeholder gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_1/while/TensorArrayV2Write/TensorListSetItemh
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add/y?
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/addl
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add_1/y?
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/add_1?
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity?
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_1?
gru_1/while/Identity_2Identitygru_1/while/add:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_2?
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_3?
gru_1/while/Identity_4Identity gru_1/while/gru_cell_1/add_3:z:0-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
gru_1/while/Identity_4"D
gru_1_while_gru_1_strided_slice!gru_1_while_gru_1_strided_slice_0"t
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"p
5gru_1_while_gru_cell_1_matmul_readvariableop_resource7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"b
.gru_1_while_gru_cell_1_readvariableop_resource0gru_1_while_gru_cell_1_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"?
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2\
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp,gru_1/while/gru_cell_1/MatMul/ReadVariableOp2`
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2N
%gru_1/while/gru_cell_1/ReadVariableOp%gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?G
?
while_body_49622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_1_readvariableop_resource_05
1while_gru_cell_1_matmul_readvariableop_resource_07
3while_gru_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_1_readvariableop_resource3
/while_gru_cell_1_matmul_readvariableop_resource5
1while_gru_cell_1_matmul_1_readvariableop_resource??&while/gru_cell_1/MatMul/ReadVariableOp?(while/gru_cell_1/MatMul_1/ReadVariableOp?while/gru_cell_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_1/ReadVariableOp?
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_1/unstack?
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_1/MatMul/ReadVariableOp?
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul?
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAddr
while/gru_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_1/Const?
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_1/split/split_dim?
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split?
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_1/MatMul_1/ReadVariableOp?
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/MatMul_1?
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/BiasAdd_1?
while/gru_cell_1/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_1/Const_1?
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_1/split_1/split_dim?
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0!while/gru_cell_1/Const_1:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_1/split_1?
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add?
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid?
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_1?
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Sigmoid_1?
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul?
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_2?
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/Tanh?
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_1u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_1/sub/x?
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/sub?
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/mul_2?
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_1/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :??????????: : :::2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?>
?
@__inference_gru_1_layer_call_and_return_conditional_losses_47761

inputs
gru_cell_1_47684
gru_cell_1_47686
gru_cell_1_47688
identity

identity_1??"gru_cell_1/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
"gru_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_1_47684gru_cell_1_47686gru_cell_1_47688*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_473142$
"gru_cell_1/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_1_47684gru_cell_1_47686gru_cell_1_47688*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_47696*
condR
while_cond_47695*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^gru_cell_1/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identitywhile:output:4#^gru_cell_1/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:???????????????????:::2H
"gru_cell_1/StatefulPartitionedCall"gru_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
gru_1_while_cond_48872(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2(
$gru_1_while_less_gru_1_strided_slice?
;gru_1_while_gru_1_while_cond_48872___redundant_placeholder0?
;gru_1_while_gru_1_while_cond_48872___redundant_placeholder1?
;gru_1_while_gru_1_while_cond_48872___redundant_placeholder2?
;gru_1_while_gru_1_while_cond_48872___redundant_placeholder3
gru_1_while_identity
?
gru_1/while/LessLessgru_1_while_placeholder$gru_1_while_less_gru_1_strided_slice*
T0*
_output_shapes
: 2
gru_1/while/Lesso
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_1/while/Identity"5
gru_1_while_identitygru_1/while/Identity:output:0*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_47274

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ????2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:??????????:??????????:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates"?J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:ݼ
?
	model
chars_from_ids
ids_from_chars
	keras_api

signatures
\generate_one_step"?
_tf_keras_model?{"class_name": "OneStep", "name": "one_step_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "OneStep"}}
?
	embedding
gru
	dense
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api
*a&call_and_return_all_conditional_losses
b__call__"?
_tf_keras_model?{"class_name": "MyModel", "name": "my_model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "MyModel"}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
state_variables

_table
	keras_api"?
_tf_keras_layer?{"class_name": "StringLookup", "name": "string_lookup_3", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "string_lookup_3", "trainable": true, "dtype": "string", "invert": true, "max_tokens": null, "num_oov_indices": 1, "oov_token": "[UNK]", "mask_token": "", "encoding": "utf-8"}}
?
state_variables

_table
	keras_api"?
_tf_keras_layer?{"class_name": "StringLookup", "name": "string_lookup_2", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "string_lookup_2", "trainable": true, "dtype": "string", "invert": false, "max_tokens": null, "num_oov_indices": 1, "oov_token": "[UNK]", "mask_token": "", "encoding": "utf-8"}}
"
_generic_user_object
"
signature_map
?

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
*c&call_and_return_all_conditional_losses
d__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 67, "output_dim": 256, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 100]}}
?
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"?

_tf_keras_rnn_layer?	{"class_name": "GRU", "name": "gru_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 1024, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 256]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [64, 100, 256]}}
?

kernel
 bias
!trainable_variables
"	variables
#regularization_losses
$	keras_api
*g&call_and_return_all_conditional_losses
h__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 67, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 100, 1024]}}
?
%iter

&beta_1

'beta_2
	(decay
)learning_ratemPmQ mR*mS+mT,mUvVvW vX*vY+vZ,v["
	optimizer
J
0
*1
+2
,3
4
 5"
trackable_list_wrapper
J
0
*1
+2
,3
4
 5"
trackable_list_wrapper
 "
trackable_list_wrapper
?

-layers

trainable_variables
.non_trainable_variables
	variables
regularization_losses
/layer_regularization_losses
0layer_metrics
1metrics
b__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
O
i_create_resource
j_initialize
k_destroy_resourceR Z
table]^
"
_generic_user_object
 "
trackable_dict_wrapper
O
l_create_resource
m_initialize
n_destroy_resourceR Z
table_`
"
_generic_user_object
4:2	C?2!my_model_1/embedding_1/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?

2layers
trainable_variables
3non_trainable_variables
	variables
regularization_losses
4layer_regularization_losses
5layer_metrics
6metrics
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
?

*kernel
+recurrent_kernel
,bias
7trainable_variables
8	variables
9regularization_losses
:	keras_api
*o&call_and_return_all_conditional_losses
p__call__"?
_tf_keras_layer?{"class_name": "GRUCell", "name": "gru_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_cell_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

;layers
trainable_variables
<non_trainable_variables
	variables
regularization_losses
=layer_regularization_losses
>layer_metrics

?states
@metrics
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
,:*	?C2my_model_1/dense_1/kernel
%:#C2my_model_1/dense_1/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Alayers
!trainable_variables
Bnon_trainable_variables
"	variables
#regularization_losses
Clayer_regularization_losses
Dlayer_metrics
Emetrics
h__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
6:4
??2"my_model_1/gru_1/gru_cell_1/kernel
@:>
??2,my_model_1/gru_1/gru_cell_1/recurrent_kernel
3:1	?2 my_model_1/gru_1/gru_cell_1/bias
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Glayers
7trainable_variables
Hnon_trainable_variables
8	variables
9regularization_losses
Ilayer_regularization_losses
Jlayer_metrics
Kmetrics
p__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
	Ltotal
	Mcount
N	variables
O	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
L0
M1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
9:7	C?2(Adam/my_model_1/embedding_1/embeddings/m
1:/	?C2 Adam/my_model_1/dense_1/kernel/m
*:(C2Adam/my_model_1/dense_1/bias/m
;:9
??2)Adam/my_model_1/gru_1/gru_cell_1/kernel/m
E:C
??23Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/m
8:6	?2'Adam/my_model_1/gru_1/gru_cell_1/bias/m
9:7	C?2(Adam/my_model_1/embedding_1/embeddings/v
1:/	?C2 Adam/my_model_1/dense_1/kernel/v
*:(C2Adam/my_model_1/dense_1/bias/v
;:9
??2)Adam/my_model_1/gru_1/gru_cell_1/kernel/v
E:C
??23Adam/my_model_1/gru_1/gru_cell_1/recurrent_kernel/v
8:6	?2'Adam/my_model_1/gru_1/gru_cell_1/bias/v
?2?
#__inference_generate_one_step_41344
#__inference_generate_one_step_41604?
???
FullArgSpec'
args?
jself
jinputs
jstates
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_save_fn_50095checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_50103restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?	
	?
?B?
__inference_save_fn_50122checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_50130restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?2?
E__inference_my_model_1_layer_call_and_return_conditional_losses_48989
E__inference_my_model_1_layer_call_and_return_conditional_losses_48575
E__inference_my_model_1_layer_call_and_return_conditional_losses_49179
E__inference_my_model_1_layer_call_and_return_conditional_losses_48765?
???
FullArgSpecC
args;?8
jself
jinputs
jstates
jreturn_state

jtraining
varargs
 
varkw
 
defaults?

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_my_model_1_layer_call_fn_48799
*__inference_my_model_1_layer_call_fn_48782
*__inference_my_model_1_layer_call_fn_49213
*__inference_my_model_1_layer_call_fn_49196?
???
FullArgSpecC
args;?8
jself
jinputs
jstates
jreturn_state

jtraining
varargs
 
varkw
 
defaults?

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_embedding_1_layer_call_and_return_conditional_losses_49222?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_embedding_1_layer_call_fn_49229?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_gru_1_layer_call_and_return_conditional_losses_49525
@__inference_gru_1_layer_call_and_return_conditional_losses_49713
@__inference_gru_1_layer_call_and_return_conditional_losses_49873
@__inference_gru_1_layer_call_and_return_conditional_losses_49377?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_gru_1_layer_call_fn_49539
%__inference_gru_1_layer_call_fn_49886
%__inference_gru_1_layer_call_fn_49553
%__inference_gru_1_layer_call_fn_49899?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_49929?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_49938?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_49943?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_49948?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_49953?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_49958?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_49963?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_49968?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_50008
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_50048?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_gru_cell_1_layer_call_fn_50076
*__inference_gru_cell_1_layer_call_fn_50062?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
	J
Const
J	
Const_1
J	
Const_26
__inference__creator_49943?

? 
? "? 6
__inference__creator_49958?

? 
? "? 8
__inference__destroyer_49953?

? 
? "? 8
__inference__destroyer_49968?

? 
? "? :
__inference__initializer_49948?

? 
? "? :
__inference__initializer_49963?

? 
? "? ?
B__inference_dense_1_layer_call_and_return_conditional_losses_49929e 4?1
*?'
%?"
inputs?????????d?
? ")?&
?
0?????????dC
? ?
'__inference_dense_1_layer_call_fn_49938X 4?1
*?'
%?"
inputs?????????d?
? "??????????dC?
F__inference_embedding_1_layer_call_and_return_conditional_losses_49222`/?,
%?"
 ?
inputs?????????d	
? "*?'
 ?
0?????????d?
? ?
+__inference_embedding_1_layer_call_fn_49229S/?,
%?"
 ?
inputs?????????d	
? "??????????d??
#__inference_generate_one_step_41344uq,*+ rs<?9
2?/
?
inputs
?
states	?
? "(?%
?
0
?
1	??
#__inference_generate_one_step_41604hq,*+ rs&?#
?
?
inputs

 
? "1?.
?
0
?
1???????????
@__inference_gru_1_layer_call_and_return_conditional_losses_49377?,*+m?j
c?`
%?"
inputs?????????d?

 
p
/?,
*?'
initial_state/0??????????
? "Q?N
G?D
"?
0/0?????????d?
?
0/1??????????
? ?
@__inference_gru_1_layer_call_and_return_conditional_losses_49525?,*+m?j
c?`
%?"
inputs?????????d?

 
p 
/?,
*?'
initial_state/0??????????
? "Q?N
G?D
"?
0/0?????????d?
?
0/1??????????
? ?
@__inference_gru_1_layer_call_and_return_conditional_losses_49713?,*+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "Z?W
P?M
+?(
0/0???????????????????
?
0/1??????????
? ?
@__inference_gru_1_layer_call_and_return_conditional_losses_49873?,*+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "Z?W
P?M
+?(
0/0???????????????????
?
0/1??????????
? ?
%__inference_gru_1_layer_call_fn_49539?,*+m?j
c?`
%?"
inputs?????????d?

 
p
/?,
*?'
initial_state/0??????????
? "C?@
 ?
0?????????d?
?
1???????????
%__inference_gru_1_layer_call_fn_49553?,*+m?j
c?`
%?"
inputs?????????d?

 
p 
/?,
*?'
initial_state/0??????????
? "C?@
 ?
0?????????d?
?
1???????????
%__inference_gru_1_layer_call_fn_49886?,*+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "L?I
)?&
0???????????????????
?
1???????????
%__inference_gru_1_layer_call_fn_49899?,*+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "L?I
)?&
0???????????????????
?
1???????????
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_50008?,*+^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_50048?,*+^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
*__inference_gru_cell_1_layer_call_fn_50062?,*+^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0???????????
*__inference_gru_cell_1_layer_call_fn_50076?,*+^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
E__inference_my_model_1_layer_call_and_return_conditional_losses_48575q,*+ <?9
2?/
!?
input_1?????????d	

 
p 
p
? ")?&
?
0?????????dC
? ?
E__inference_my_model_1_layer_call_and_return_conditional_losses_48765q,*+ <?9
2?/
!?
input_1?????????d	

 
p 
p 
? ")?&
?
0?????????dC
? ?
E__inference_my_model_1_layer_call_and_return_conditional_losses_48989p,*+ ;?8
1?.
 ?
inputs?????????d	

 
p 
p
? ")?&
?
0?????????dC
? ?
E__inference_my_model_1_layer_call_and_return_conditional_losses_49179p,*+ ;?8
1?.
 ?
inputs?????????d	

 
p 
p 
? ")?&
?
0?????????dC
? ?
*__inference_my_model_1_layer_call_fn_48782d,*+ <?9
2?/
!?
input_1?????????d	

 
p 
p
? "??????????dC?
*__inference_my_model_1_layer_call_fn_48799d,*+ <?9
2?/
!?
input_1?????????d	

 
p 
p 
? "??????????dC?
*__inference_my_model_1_layer_call_fn_49196c,*+ ;?8
1?.
 ?
inputs?????????d	

 
p 
p
? "??????????dC?
*__inference_my_model_1_layer_call_fn_49213c,*+ ;?8
1?.
 ?
inputs?????????d	

 
p 
p 
? "??????????dCy
__inference_restore_fn_50103YK?H
A?>
?
restored_tensors_0	
?
restored_tensors_1
? "? y
__inference_restore_fn_50130YK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_50095?&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor	
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor?
__inference_save_fn_50122?&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	