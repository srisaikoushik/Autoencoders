
њн
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

,
Exp
x"T
y"T"
Ttype:

2
ћ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ЭЬL>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02unknown8
u
z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*
shared_namez_log_var/bias
n
"z_log_var/bias/Read/ReadVariableOpReadVariableOpz_log_var/bias*
_output_shapes	
:Ш*
dtype0
~
z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш*!
shared_namez_log_var/kernel
w
$z_log_var/kernel/Read/ReadVariableOpReadVariableOpz_log_var/kernel* 
_output_shapes
:
Ш*
dtype0
o
z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*
shared_namez_mean/bias
h
z_mean/bias/Read/ReadVariableOpReadVariableOpz_mean/bias*
_output_shapes	
:Ш*
dtype0
x
z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш*
shared_namez_mean/kernel
q
!z_mean/kernel/Read/ReadVariableOpReadVariableOpz_mean/kernel* 
_output_shapes
:
Ш*
dtype0
Є
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_15/moving_variance

:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
:@*
dtype0

"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_15/moving_mean

6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_15/beta

/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
:@*
dtype0

batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_15/gamma

0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
:@*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:@*
dtype0

conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:@@*
dtype0
Є
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_14/moving_variance

:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes
:@*
dtype0

"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_14/moving_mean

6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_14/beta

/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes
:@*
dtype0

batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_14/gamma

0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes
:@*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:@*
dtype0

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:@@*
dtype0
Є
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_13/moving_variance

:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:@*
dtype0

"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_13/moving_mean

6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_13/beta

/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes
:@*
dtype0

batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_13/gamma

0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes
:@*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0

conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0
Є
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_12/moving_variance

:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:@*
dtype0

"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_12/moving_mean

6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_12/beta

/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes
:@*
dtype0

batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_12/gamma

0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes
:@*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:@@*
dtype0
Є
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_11/moving_variance

:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes
:@*
dtype0

"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_11/moving_mean

6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_11/beta

/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes
:@*
dtype0

batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_11/gamma

0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes
:@*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@*
dtype0

serving_default_encoder_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ@@*
dtype0*$
shape:џџџџџџџџџ@@
Ј

StatefulPartitionedCallStatefulPartitionedCallserving_default_encoder_inputconv2d_5/kernelconv2d_5/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_6/kernelconv2d_6/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_7/kernelconv2d_7/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_8/kernelconv2d_8/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_9/kernelconv2d_9/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancez_mean/kernelz_mean/biasz_log_var/kernelz_log_var/bias*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_446495

NoOpNoOp
џ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Й
valueЎBЊ BЂ

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer-19
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
Ш
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias
 %_jit_compiled_convolution_op*
е
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,axis
	-gamma
.beta
/moving_mean
0moving_variance*

1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
Ш
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias
 ?_jit_compiled_convolution_op*
е
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Faxis
	Ggamma
Hbeta
Imoving_mean
Jmoving_variance*

K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
Ш
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias
 Y_jit_compiled_convolution_op*
е
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance*

e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses* 
Ш
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
 s_jit_compiled_convolution_op*
е
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
zaxis
	{gamma
|beta
}moving_mean
~moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
р
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
moving_mean
moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
 trainable_variables
Ёregularization_losses
Ђ	keras_api
Ѓ__call__
+Є&call_and_return_all_conditional_losses* 
Ў
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Ј	keras_api
Љ__call__
+Њ&call_and_return_all_conditional_losses
Ћkernel
	Ќbias*
Ў
­	variables
Ўtrainable_variables
Џregularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Гkernel
	Дbias*

Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses* 

#0
$1
-2
.3
/4
05
=6
>7
G8
H9
I10
J11
W12
X13
a14
b15
c16
d17
q18
r19
{20
|21
}22
~23
24
25
26
27
28
29
Ћ30
Ќ31
Г32
Д33*
Т
#0
$1
-2
.3
=4
>5
G6
H7
W8
X9
a10
b11
q12
r13
{14
|15
16
17
18
19
Ћ20
Ќ21
Г22
Д23*
* 
Е
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Рtrace_0
Сtrace_1
Тtrace_2
Уtrace_3* 
:
Фtrace_0
Хtrace_1
Цtrace_2
Чtrace_3* 
* 

Шserving_default* 

#0
$1*

#0
$1*
* 

Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Юtrace_0* 

Яtrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
-0
.1
/2
03*

-0
.1*
* 

аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

еtrace_0
жtrace_1* 

зtrace_0
иtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

оtrace_0* 

пtrace_0* 

=0
>1*

=0
>1*
* 

рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

хtrace_0* 

цtrace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
G0
H1
I2
J3*

G0
H1*
* 

чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

ьtrace_0
эtrace_1* 

юtrace_0
яtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

№non_trainable_variables
ёlayers
ђmetrics
 ѓlayer_regularization_losses
єlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

ѕtrace_0* 

іtrace_0* 

W0
X1*

W0
X1*
* 

їnon_trainable_variables
јlayers
љmetrics
 њlayer_regularization_losses
ћlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

ќtrace_0* 

§trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
a0
b1
c2
d3*

a0
b1*
* 

ўnon_trainable_variables
џlayers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

q0
r1*

q0
r1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
{0
|1
}2
~3*

{0
|1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_14/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_14/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_14/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_14/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Ѓtrace_0* 

Єtrace_0* 

0
1*

0
1*
* 

Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Њtrace_0* 

Ћtrace_0* 
_Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

0
1*
* 

Ќnon_trainable_variables
­layers
Ўmetrics
 Џlayer_regularization_losses
Аlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Бtrace_0
Вtrace_1* 

Гtrace_0
Дtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Кtrace_0* 

Лtrace_0* 
* 
* 
* 

Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
	variables
 trainable_variables
Ёregularization_losses
Ѓ__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses* 

Сtrace_0* 

Тtrace_0* 

Ћ0
Ќ1*

Ћ0
Ќ1*
* 

Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses*

Шtrace_0* 

Щtrace_0* 
^X
VARIABLE_VALUEz_mean/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEz_mean/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

Г0
Д1*

Г0
Д1*
* 

Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
­	variables
Ўtrainable_variables
Џregularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses*

Яtrace_0* 

аtrace_0* 
a[
VARIABLE_VALUEz_log_var/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEz_log_var/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses* 

жtrace_0* 

зtrace_0* 
L
/0
01
I2
J3
c4
d5
}6
~7
8
9*

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

/0
01*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

I0
J1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

c0
d1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

}0
~1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ц
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp0batch_normalization_12/gamma/Read/ReadVariableOp/batch_normalization_12/beta/Read/ReadVariableOp6batch_normalization_12/moving_mean/Read/ReadVariableOp:batch_normalization_12/moving_variance/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp0batch_normalization_14/gamma/Read/ReadVariableOp/batch_normalization_14/beta/Read/ReadVariableOp6batch_normalization_14/moving_mean/Read/ReadVariableOp:batch_normalization_14/moving_variance/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp!z_mean/kernel/Read/ReadVariableOpz_mean/bias/Read/ReadVariableOp$z_log_var/kernel/Read/ReadVariableOp"z_log_var/bias/Read/ReadVariableOpConst*/
Tin(
&2$*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_447604
Й	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_5/kernelconv2d_5/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_6/kernelconv2d_6/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_7/kernelconv2d_7/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_8/kernelconv2d_8/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_9/kernelconv2d_9/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancez_mean/kernelz_mean/biasz_log_var/kernelz_log_var/bias*.
Tin'
%2#*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_447716Ї

s
F__inference_sampling_1_layer_call_and_return_conditional_losses_445713

inputs
inputs_1
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?З
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0*
seedБџх)*
seed2ЯШЧ
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:џџџџџџџџџШJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
mulMulmul/x:output:0inputs_1*
T0*(
_output_shapes
:џџџџџџџџџШF
ExpExpmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ[
mul_1MulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:џџџџџџџџџШR
addAddV2inputs	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_12_layer_call_fn_447077

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_445277
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_447396

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ@*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
вb

C__inference_encoder_layer_call_and_return_conditional_losses_445718

inputs)
conv2d_5_445498:@
conv2d_5_445500:@+
batch_normalization_11_445503:@+
batch_normalization_11_445505:@+
batch_normalization_11_445507:@+
batch_normalization_11_445509:@)
conv2d_6_445530:@@
conv2d_6_445532:@+
batch_normalization_12_445535:@+
batch_normalization_12_445537:@+
batch_normalization_12_445539:@+
batch_normalization_12_445541:@)
conv2d_7_445562:@@
conv2d_7_445564:@+
batch_normalization_13_445567:@+
batch_normalization_13_445569:@+
batch_normalization_13_445571:@+
batch_normalization_13_445573:@)
conv2d_8_445594:@@
conv2d_8_445596:@+
batch_normalization_14_445599:@+
batch_normalization_14_445601:@+
batch_normalization_14_445603:@+
batch_normalization_14_445605:@)
conv2d_9_445626:@@
conv2d_9_445628:@+
batch_normalization_15_445631:@+
batch_normalization_15_445633:@+
batch_normalization_15_445635:@+
batch_normalization_15_445637:@!
z_mean_445666:
Ш
z_mean_445668:	Ш$
z_log_var_445682:
Ш
z_log_var_445684:	Ш
identity

identity_1

identity_2Ђ.batch_normalization_11/StatefulPartitionedCallЂ.batch_normalization_12/StatefulPartitionedCallЂ.batch_normalization_13/StatefulPartitionedCallЂ.batch_normalization_14/StatefulPartitionedCallЂ.batch_normalization_15/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCallЂ conv2d_7/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCallЂ"sampling_1/StatefulPartitionedCallЂ!z_log_var/StatefulPartitionedCallЂz_mean/StatefulPartitionedCallј
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_445498conv2d_5_445500*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_445497
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_11_445503batch_normalization_11_445505batch_normalization_11_445507batch_normalization_11_445509*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_445182§
leaky_re_lu_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_445517
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0conv2d_6_445530conv2d_6_445532*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_445529
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_12_445535batch_normalization_12_445537batch_normalization_12_445539batch_normalization_12_445541*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_445246§
leaky_re_lu_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_445549
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0conv2d_7_445562conv2d_7_445564*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_445561
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_13_445567batch_normalization_13_445569batch_normalization_13_445571batch_normalization_13_445573*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_445310§
leaky_re_lu_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_445581
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_8_445594conv2d_8_445596*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_445593
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_14_445599batch_normalization_14_445601batch_normalization_14_445603batch_normalization_14_445605*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_445374§
leaky_re_lu_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_445613
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_9_445626conv2d_9_445628*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_445625
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_15_445631batch_normalization_15_445633batch_normalization_15_445635batch_normalization_15_445637*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_445438§
leaky_re_lu_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_445645м
flatten_1/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_445653
z_mean/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0z_mean_445666z_mean_445668*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_445665
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0z_log_var_445682z_log_var_445684*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_445681
"sampling_1/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sampling_1_layer_call_and_return_conditional_losses_445713w
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ|

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ}

Identity_2Identity+sampling_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШд
NoOpNoOp/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall#^sampling_1/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2H
"sampling_1/StatefulPartitionedCall"sampling_1/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_15_layer_call_fn_447337

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_445438
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Э

R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_447095

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ы

*__inference_z_log_var_layer_call_fn_447435

inputs
unknown:
Ш
	unknown_0:	Ш
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_445681p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї

§
D__inference_conv2d_5_layer_call_and_return_conditional_losses_445497

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ъ

)__inference_conv2d_9_layer_call_fn_447314

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_445625w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ї

§
D__inference_conv2d_5_layer_call_and_return_conditional_losses_446960

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Ї

§
D__inference_conv2d_9_layer_call_and_return_conditional_losses_445625

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
а	
і
B__inference_z_mean_layer_call_and_return_conditional_losses_447426

inputs2
matmul_readvariableop_resource:
Ш.
biasadd_readvariableop_resource:	Ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_445613

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ@*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_445517

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ  @*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ  @:W S
/
_output_shapes
:џџџџџџџџџ  @
 
_user_specified_nameinputs
Э

R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_447004

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Б

C__inference_encoder_layer_call_and_return_conditional_losses_446795

inputsA
'conv2d_5_conv2d_readvariableop_resource:@6
(conv2d_5_biasadd_readvariableop_resource:@<
.batch_normalization_11_readvariableop_resource:@>
0batch_normalization_11_readvariableop_1_resource:@M
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_6_conv2d_readvariableop_resource:@@6
(conv2d_6_biasadd_readvariableop_resource:@<
.batch_normalization_12_readvariableop_resource:@>
0batch_normalization_12_readvariableop_1_resource:@M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_7_conv2d_readvariableop_resource:@@6
(conv2d_7_biasadd_readvariableop_resource:@<
.batch_normalization_13_readvariableop_resource:@>
0batch_normalization_13_readvariableop_1_resource:@M
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_8_conv2d_readvariableop_resource:@@6
(conv2d_8_biasadd_readvariableop_resource:@<
.batch_normalization_14_readvariableop_resource:@>
0batch_normalization_14_readvariableop_1_resource:@M
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@@6
(conv2d_9_biasadd_readvariableop_resource:@<
.batch_normalization_15_readvariableop_resource:@>
0batch_normalization_15_readvariableop_1_resource:@M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@9
%z_mean_matmul_readvariableop_resource:
Ш5
&z_mean_biasadd_readvariableop_resource:	Ш<
(z_log_var_matmul_readvariableop_resource:
Ш8
)z_log_var_biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2Ђ6batch_normalization_11/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_11/ReadVariableOpЂ'batch_normalization_11/ReadVariableOp_1Ђ6batch_normalization_12/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_12/ReadVariableOpЂ'batch_normalization_12/ReadVariableOp_1Ђ6batch_normalization_13/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_13/ReadVariableOpЂ'batch_normalization_13/ReadVariableOp_1Ђ6batch_normalization_14/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_14/ReadVariableOpЂ'batch_normalization_14/ReadVariableOp_1Ђ6batch_normalization_15/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_15/ReadVariableOpЂ'batch_normalization_15/ReadVariableOp_1Ђconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂconv2d_6/BiasAdd/ReadVariableOpЂconv2d_6/Conv2D/ReadVariableOpЂconv2d_7/BiasAdd/ReadVariableOpЂconv2d_7/Conv2D/ReadVariableOpЂconv2d_8/BiasAdd/ReadVariableOpЂconv2d_8/Conv2D/ReadVariableOpЂconv2d_9/BiasAdd/ReadVariableOpЂconv2d_9/Conv2D/ReadVariableOpЂ z_log_var/BiasAdd/ReadVariableOpЂz_log_var/MatMul/ReadVariableOpЂz_mean/BiasAdd/ReadVariableOpЂz_mean/MatMul/ReadVariableOp
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ћ
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3conv2d_5/BiasAdd:output:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ  @:@:@:@:@:*
epsilon%o:*
is_training( 
leaky_re_lu_11/LeakyRelu	LeakyRelu+batch_normalization_11/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ  @*
alpha%>
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
conv2d_6/Conv2DConv2D&leaky_re_lu_11/LeakyRelu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_6/BiasAdd:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( 
leaky_re_lu_12/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
conv2d_7/Conv2DConv2D&leaky_re_lu_12/LeakyRelu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_7/BiasAdd:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( 
leaky_re_lu_13/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
conv2d_8/Conv2DConv2D&leaky_re_lu_13/LeakyRelu:activations:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_8/BiasAdd:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( 
leaky_re_lu_14/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
conv2d_9/Conv2DConv2D&leaky_re_lu_14/LeakyRelu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_9/BiasAdd:output:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( 
leaky_re_lu_15/LeakyRelu	LeakyRelu+batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_1/ReshapeReshape&leaky_re_lu_15/LeakyRelu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
z_mean/MatMulMatMulflatten_1/Reshape:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
z_log_var/MatMulMatMulflatten_1/Reshape:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШW
sampling_1/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:h
sampling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 sampling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 sampling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sampling_1/strided_sliceStridedSlicesampling_1/Shape:output:0'sampling_1/strided_slice/stack:output:0)sampling_1/strided_slice/stack_1:output:0)sampling_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
sampling_1/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:j
 sampling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:l
"sampling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"sampling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sampling_1/strided_slice_1StridedSlicesampling_1/Shape_1:output:0)sampling_1/strided_slice_1/stack:output:0+sampling_1/strided_slice_1/stack_1:output:0+sampling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
sampling_1/random_normal/shapePack!sampling_1/strided_slice:output:0#sampling_1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:b
sampling_1/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    d
sampling_1/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Э
-sampling_1/random_normal/RandomStandardNormalRandomStandardNormal'sampling_1/random_normal/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0*
seedБџх)*
seed2сЫИ
sampling_1/random_normal/mulMul6sampling_1/random_normal/RandomStandardNormal:output:0(sampling_1/random_normal/stddev:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
sampling_1/random_normalAddV2 sampling_1/random_normal/mul:z:0&sampling_1/random_normal/mean:output:0*
T0*(
_output_shapes
:џџџџџџџџџШU
sampling_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
sampling_1/mulMulsampling_1/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ\
sampling_1/ExpExpsampling_1/mul:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
sampling_1/mul_1Mulsampling_1/Exp:y:0sampling_1/random_normal:z:0*
T0*(
_output_shapes
:џџџџџџџџџШy
sampling_1/addAddV2z_mean/BiasAdd:output:0sampling_1/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШg
IdentityIdentityz_mean/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШl

Identity_1Identityz_log_var/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШd

Identity_2Identitysampling_1/add:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШї
NoOpNoOp7^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1 ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Х

'__inference_z_mean_layer_call_fn_447416

inputs
unknown:
Ш
	unknown_0:	Ш
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_445665p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ

)__inference_conv2d_8_layer_call_fn_447223

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_445593w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

С
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_445469

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_13_layer_call_fn_447168

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_445341
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ї

§
D__inference_conv2d_7_layer_call_and_return_conditional_losses_445561

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_447032

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ  @*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ  @:W S
/
_output_shapes
:џџџџџџџџџ  @
 
_user_specified_nameinputs
Э

R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_445182

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Э

R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_445438

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Щ
K
/__inference_leaky_re_lu_12_layer_call_fn_447118

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_445549h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ЕШ
"
!__inference__wrapped_model_445160
encoder_inputI
/encoder_conv2d_5_conv2d_readvariableop_resource:@>
0encoder_conv2d_5_biasadd_readvariableop_resource:@D
6encoder_batch_normalization_11_readvariableop_resource:@F
8encoder_batch_normalization_11_readvariableop_1_resource:@U
Gencoder_batch_normalization_11_fusedbatchnormv3_readvariableop_resource:@W
Iencoder_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:@I
/encoder_conv2d_6_conv2d_readvariableop_resource:@@>
0encoder_conv2d_6_biasadd_readvariableop_resource:@D
6encoder_batch_normalization_12_readvariableop_resource:@F
8encoder_batch_normalization_12_readvariableop_1_resource:@U
Gencoder_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@W
Iencoder_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@I
/encoder_conv2d_7_conv2d_readvariableop_resource:@@>
0encoder_conv2d_7_biasadd_readvariableop_resource:@D
6encoder_batch_normalization_13_readvariableop_resource:@F
8encoder_batch_normalization_13_readvariableop_1_resource:@U
Gencoder_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:@W
Iencoder_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:@I
/encoder_conv2d_8_conv2d_readvariableop_resource:@@>
0encoder_conv2d_8_biasadd_readvariableop_resource:@D
6encoder_batch_normalization_14_readvariableop_resource:@F
8encoder_batch_normalization_14_readvariableop_1_resource:@U
Gencoder_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:@W
Iencoder_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:@I
/encoder_conv2d_9_conv2d_readvariableop_resource:@@>
0encoder_conv2d_9_biasadd_readvariableop_resource:@D
6encoder_batch_normalization_15_readvariableop_resource:@F
8encoder_batch_normalization_15_readvariableop_1_resource:@U
Gencoder_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@W
Iencoder_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@A
-encoder_z_mean_matmul_readvariableop_resource:
Ш=
.encoder_z_mean_biasadd_readvariableop_resource:	ШD
0encoder_z_log_var_matmul_readvariableop_resource:
Ш@
1encoder_z_log_var_biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2Ђ>encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOpЂ@encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Ђ-encoder/batch_normalization_11/ReadVariableOpЂ/encoder/batch_normalization_11/ReadVariableOp_1Ђ>encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOpЂ@encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Ђ-encoder/batch_normalization_12/ReadVariableOpЂ/encoder/batch_normalization_12/ReadVariableOp_1Ђ>encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOpЂ@encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Ђ-encoder/batch_normalization_13/ReadVariableOpЂ/encoder/batch_normalization_13/ReadVariableOp_1Ђ>encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOpЂ@encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Ђ-encoder/batch_normalization_14/ReadVariableOpЂ/encoder/batch_normalization_14/ReadVariableOp_1Ђ>encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOpЂ@encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Ђ-encoder/batch_normalization_15/ReadVariableOpЂ/encoder/batch_normalization_15/ReadVariableOp_1Ђ'encoder/conv2d_5/BiasAdd/ReadVariableOpЂ&encoder/conv2d_5/Conv2D/ReadVariableOpЂ'encoder/conv2d_6/BiasAdd/ReadVariableOpЂ&encoder/conv2d_6/Conv2D/ReadVariableOpЂ'encoder/conv2d_7/BiasAdd/ReadVariableOpЂ&encoder/conv2d_7/Conv2D/ReadVariableOpЂ'encoder/conv2d_8/BiasAdd/ReadVariableOpЂ&encoder/conv2d_8/Conv2D/ReadVariableOpЂ'encoder/conv2d_9/BiasAdd/ReadVariableOpЂ&encoder/conv2d_9/Conv2D/ReadVariableOpЂ(encoder/z_log_var/BiasAdd/ReadVariableOpЂ'encoder/z_log_var/MatMul/ReadVariableOpЂ%encoder/z_mean/BiasAdd/ReadVariableOpЂ$encoder/z_mean/MatMul/ReadVariableOp
&encoder/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
encoder/conv2d_5/Conv2DConv2Dencoder_input.encoder/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @*
paddingSAME*
strides

'encoder/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
encoder/conv2d_5/BiasAddBiasAdd encoder/conv2d_5/Conv2D:output:0/encoder/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @ 
-encoder/batch_normalization_11/ReadVariableOpReadVariableOp6encoder_batch_normalization_11_readvariableop_resource*
_output_shapes
:@*
dtype0Є
/encoder/batch_normalization_11/ReadVariableOp_1ReadVariableOp8encoder_batch_normalization_11_readvariableop_1_resource*
_output_shapes
:@*
dtype0Т
>encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpGencoder_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ц
@encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIencoder_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ь
/encoder/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3!encoder/conv2d_5/BiasAdd:output:05encoder/batch_normalization_11/ReadVariableOp:value:07encoder/batch_normalization_11/ReadVariableOp_1:value:0Fencoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Hencoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ  @:@:@:@:@:*
epsilon%o:*
is_training( Ѓ
 encoder/leaky_re_lu_11/LeakyRelu	LeakyRelu3encoder/batch_normalization_11/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ  @*
alpha%>
&encoder/conv2d_6/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
encoder/conv2d_6/Conv2DConv2D.encoder/leaky_re_lu_11/LeakyRelu:activations:0.encoder/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

'encoder/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
encoder/conv2d_6/BiasAddBiasAdd encoder/conv2d_6/Conv2D:output:0/encoder/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@ 
-encoder/batch_normalization_12/ReadVariableOpReadVariableOp6encoder_batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype0Є
/encoder/batch_normalization_12/ReadVariableOp_1ReadVariableOp8encoder_batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype0Т
>encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpGencoder_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ц
@encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIencoder_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ь
/encoder/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3!encoder/conv2d_6/BiasAdd:output:05encoder/batch_normalization_12/ReadVariableOp:value:07encoder/batch_normalization_12/ReadVariableOp_1:value:0Fencoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Hencoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( Ѓ
 encoder/leaky_re_lu_12/LeakyRelu	LeakyRelu3encoder/batch_normalization_12/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
&encoder/conv2d_7/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
encoder/conv2d_7/Conv2DConv2D.encoder/leaky_re_lu_12/LeakyRelu:activations:0.encoder/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

'encoder/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
encoder/conv2d_7/BiasAddBiasAdd encoder/conv2d_7/Conv2D:output:0/encoder/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@ 
-encoder/batch_normalization_13/ReadVariableOpReadVariableOp6encoder_batch_normalization_13_readvariableop_resource*
_output_shapes
:@*
dtype0Є
/encoder/batch_normalization_13/ReadVariableOp_1ReadVariableOp8encoder_batch_normalization_13_readvariableop_1_resource*
_output_shapes
:@*
dtype0Т
>encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpGencoder_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ц
@encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIencoder_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ь
/encoder/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3!encoder/conv2d_7/BiasAdd:output:05encoder/batch_normalization_13/ReadVariableOp:value:07encoder/batch_normalization_13/ReadVariableOp_1:value:0Fencoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Hencoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( Ѓ
 encoder/leaky_re_lu_13/LeakyRelu	LeakyRelu3encoder/batch_normalization_13/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
&encoder/conv2d_8/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
encoder/conv2d_8/Conv2DConv2D.encoder/leaky_re_lu_13/LeakyRelu:activations:0.encoder/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

'encoder/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
encoder/conv2d_8/BiasAddBiasAdd encoder/conv2d_8/Conv2D:output:0/encoder/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@ 
-encoder/batch_normalization_14/ReadVariableOpReadVariableOp6encoder_batch_normalization_14_readvariableop_resource*
_output_shapes
:@*
dtype0Є
/encoder/batch_normalization_14/ReadVariableOp_1ReadVariableOp8encoder_batch_normalization_14_readvariableop_1_resource*
_output_shapes
:@*
dtype0Т
>encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpGencoder_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ц
@encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIencoder_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ь
/encoder/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3!encoder/conv2d_8/BiasAdd:output:05encoder/batch_normalization_14/ReadVariableOp:value:07encoder/batch_normalization_14/ReadVariableOp_1:value:0Fencoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Hencoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( Ѓ
 encoder/leaky_re_lu_14/LeakyRelu	LeakyRelu3encoder/batch_normalization_14/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
&encoder/conv2d_9/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
encoder/conv2d_9/Conv2DConv2D.encoder/leaky_re_lu_14/LeakyRelu:activations:0.encoder/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

'encoder/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
encoder/conv2d_9/BiasAddBiasAdd encoder/conv2d_9/Conv2D:output:0/encoder/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@ 
-encoder/batch_normalization_15/ReadVariableOpReadVariableOp6encoder_batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0Є
/encoder/batch_normalization_15/ReadVariableOp_1ReadVariableOp8encoder_batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0Т
>encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpGencoder_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ц
@encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIencoder_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ь
/encoder/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3!encoder/conv2d_9/BiasAdd:output:05encoder/batch_normalization_15/ReadVariableOp:value:07encoder/batch_normalization_15/ReadVariableOp_1:value:0Fencoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Hencoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( Ѓ
 encoder/leaky_re_lu_15/LeakyRelu	LeakyRelu3encoder/batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>h
encoder/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Љ
encoder/flatten_1/ReshapeReshape.encoder/leaky_re_lu_15/LeakyRelu:activations:0 encoder/flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
$encoder/z_mean/MatMul/ReadVariableOpReadVariableOp-encoder_z_mean_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0Є
encoder/z_mean/MatMulMatMul"encoder/flatten_1/Reshape:output:0,encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
%encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp.encoder_z_mean_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0Є
encoder/z_mean/BiasAddBiasAddencoder/z_mean/MatMul:product:0-encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
'encoder/z_log_var/MatMul/ReadVariableOpReadVariableOp0encoder_z_log_var_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0Њ
encoder/z_log_var/MatMulMatMul"encoder/flatten_1/Reshape:output:0/encoder/z_log_var/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
(encoder/z_log_var/BiasAdd/ReadVariableOpReadVariableOp1encoder_z_log_var_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0­
encoder/z_log_var/BiasAddBiasAdd"encoder/z_log_var/MatMul:product:00encoder/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
encoder/sampling_1/ShapeShapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:p
&encoder/sampling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(encoder/sampling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(encoder/sampling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 encoder/sampling_1/strided_sliceStridedSlice!encoder/sampling_1/Shape:output:0/encoder/sampling_1/strided_slice/stack:output:01encoder/sampling_1/strided_slice/stack_1:output:01encoder/sampling_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
encoder/sampling_1/Shape_1Shapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:r
(encoder/sampling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*encoder/sampling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*encoder/sampling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"encoder/sampling_1/strided_slice_1StridedSlice#encoder/sampling_1/Shape_1:output:01encoder/sampling_1/strided_slice_1/stack:output:03encoder/sampling_1/strided_slice_1/stack_1:output:03encoder/sampling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskД
&encoder/sampling_1/random_normal/shapePack)encoder/sampling_1/strided_slice:output:0+encoder/sampling_1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:j
%encoder/sampling_1/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    l
'encoder/sampling_1/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?н
5encoder/sampling_1/random_normal/RandomStandardNormalRandomStandardNormal/encoder/sampling_1/random_normal/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0*
seedБџх)*
seed2Љээа
$encoder/sampling_1/random_normal/mulMul>encoder/sampling_1/random_normal/RandomStandardNormal:output:00encoder/sampling_1/random_normal/stddev:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЖ
 encoder/sampling_1/random_normalAddV2(encoder/sampling_1/random_normal/mul:z:0.encoder/sampling_1/random_normal/mean:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ]
encoder/sampling_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
encoder/sampling_1/mulMul!encoder/sampling_1/mul/x:output:0"encoder/z_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШl
encoder/sampling_1/ExpExpencoder/sampling_1/mul:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
encoder/sampling_1/mul_1Mulencoder/sampling_1/Exp:y:0$encoder/sampling_1/random_normal:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
encoder/sampling_1/addAddV2encoder/z_mean/BiasAdd:output:0encoder/sampling_1/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
IdentityIdentityencoder/sampling_1/add:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШt

Identity_1Identity"encoder/z_log_var/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШq

Identity_2Identityencoder/z_mean/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
NoOpNoOp?^encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOpA^encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1.^encoder/batch_normalization_11/ReadVariableOp0^encoder/batch_normalization_11/ReadVariableOp_1?^encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOpA^encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1.^encoder/batch_normalization_12/ReadVariableOp0^encoder/batch_normalization_12/ReadVariableOp_1?^encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOpA^encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1.^encoder/batch_normalization_13/ReadVariableOp0^encoder/batch_normalization_13/ReadVariableOp_1?^encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOpA^encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1.^encoder/batch_normalization_14/ReadVariableOp0^encoder/batch_normalization_14/ReadVariableOp_1?^encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOpA^encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1.^encoder/batch_normalization_15/ReadVariableOp0^encoder/batch_normalization_15/ReadVariableOp_1(^encoder/conv2d_5/BiasAdd/ReadVariableOp'^encoder/conv2d_5/Conv2D/ReadVariableOp(^encoder/conv2d_6/BiasAdd/ReadVariableOp'^encoder/conv2d_6/Conv2D/ReadVariableOp(^encoder/conv2d_7/BiasAdd/ReadVariableOp'^encoder/conv2d_7/Conv2D/ReadVariableOp(^encoder/conv2d_8/BiasAdd/ReadVariableOp'^encoder/conv2d_8/Conv2D/ReadVariableOp(^encoder/conv2d_9/BiasAdd/ReadVariableOp'^encoder/conv2d_9/Conv2D/ReadVariableOp)^encoder/z_log_var/BiasAdd/ReadVariableOp(^encoder/z_log_var/MatMul/ReadVariableOp&^encoder/z_mean/BiasAdd/ReadVariableOp%^encoder/z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2
>encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp>encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2
@encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1@encoder/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12^
-encoder/batch_normalization_11/ReadVariableOp-encoder/batch_normalization_11/ReadVariableOp2b
/encoder/batch_normalization_11/ReadVariableOp_1/encoder/batch_normalization_11/ReadVariableOp_12
>encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp>encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2
@encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1@encoder/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12^
-encoder/batch_normalization_12/ReadVariableOp-encoder/batch_normalization_12/ReadVariableOp2b
/encoder/batch_normalization_12/ReadVariableOp_1/encoder/batch_normalization_12/ReadVariableOp_12
>encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp>encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2
@encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1@encoder/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12^
-encoder/batch_normalization_13/ReadVariableOp-encoder/batch_normalization_13/ReadVariableOp2b
/encoder/batch_normalization_13/ReadVariableOp_1/encoder/batch_normalization_13/ReadVariableOp_12
>encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp>encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2
@encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1@encoder/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12^
-encoder/batch_normalization_14/ReadVariableOp-encoder/batch_normalization_14/ReadVariableOp2b
/encoder/batch_normalization_14/ReadVariableOp_1/encoder/batch_normalization_14/ReadVariableOp_12
>encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp>encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2
@encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1@encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12^
-encoder/batch_normalization_15/ReadVariableOp-encoder/batch_normalization_15/ReadVariableOp2b
/encoder/batch_normalization_15/ReadVariableOp_1/encoder/batch_normalization_15/ReadVariableOp_12R
'encoder/conv2d_5/BiasAdd/ReadVariableOp'encoder/conv2d_5/BiasAdd/ReadVariableOp2P
&encoder/conv2d_5/Conv2D/ReadVariableOp&encoder/conv2d_5/Conv2D/ReadVariableOp2R
'encoder/conv2d_6/BiasAdd/ReadVariableOp'encoder/conv2d_6/BiasAdd/ReadVariableOp2P
&encoder/conv2d_6/Conv2D/ReadVariableOp&encoder/conv2d_6/Conv2D/ReadVariableOp2R
'encoder/conv2d_7/BiasAdd/ReadVariableOp'encoder/conv2d_7/BiasAdd/ReadVariableOp2P
&encoder/conv2d_7/Conv2D/ReadVariableOp&encoder/conv2d_7/Conv2D/ReadVariableOp2R
'encoder/conv2d_8/BiasAdd/ReadVariableOp'encoder/conv2d_8/BiasAdd/ReadVariableOp2P
&encoder/conv2d_8/Conv2D/ReadVariableOp&encoder/conv2d_8/Conv2D/ReadVariableOp2R
'encoder/conv2d_9/BiasAdd/ReadVariableOp'encoder/conv2d_9/BiasAdd/ReadVariableOp2P
&encoder/conv2d_9/Conv2D/ReadVariableOp&encoder/conv2d_9/Conv2D/ReadVariableOp2T
(encoder/z_log_var/BiasAdd/ReadVariableOp(encoder/z_log_var/BiasAdd/ReadVariableOp2R
'encoder/z_log_var/MatMul/ReadVariableOp'encoder/z_log_var/MatMul/ReadVariableOp2N
%encoder/z_mean/BiasAdd/ReadVariableOp%encoder/z_mean/BiasAdd/ReadVariableOp2L
$encoder/z_mean/MatMul/ReadVariableOp$encoder/z_mean/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:џџџџџџџџџ@@
'
_user_specified_nameencoder_input

f
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_445645

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ@*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ъ

)__inference_conv2d_5_layer_call_fn_446950

inputs!
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_445497w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
нb

C__inference_encoder_layer_call_and_return_conditional_losses_446416
encoder_input)
conv2d_5_446326:@
conv2d_5_446328:@+
batch_normalization_11_446331:@+
batch_normalization_11_446333:@+
batch_normalization_11_446335:@+
batch_normalization_11_446337:@)
conv2d_6_446341:@@
conv2d_6_446343:@+
batch_normalization_12_446346:@+
batch_normalization_12_446348:@+
batch_normalization_12_446350:@+
batch_normalization_12_446352:@)
conv2d_7_446356:@@
conv2d_7_446358:@+
batch_normalization_13_446361:@+
batch_normalization_13_446363:@+
batch_normalization_13_446365:@+
batch_normalization_13_446367:@)
conv2d_8_446371:@@
conv2d_8_446373:@+
batch_normalization_14_446376:@+
batch_normalization_14_446378:@+
batch_normalization_14_446380:@+
batch_normalization_14_446382:@)
conv2d_9_446386:@@
conv2d_9_446388:@+
batch_normalization_15_446391:@+
batch_normalization_15_446393:@+
batch_normalization_15_446395:@+
batch_normalization_15_446397:@!
z_mean_446402:
Ш
z_mean_446404:	Ш$
z_log_var_446407:
Ш
z_log_var_446409:	Ш
identity

identity_1

identity_2Ђ.batch_normalization_11/StatefulPartitionedCallЂ.batch_normalization_12/StatefulPartitionedCallЂ.batch_normalization_13/StatefulPartitionedCallЂ.batch_normalization_14/StatefulPartitionedCallЂ.batch_normalization_15/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCallЂ conv2d_7/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCallЂ"sampling_1/StatefulPartitionedCallЂ!z_log_var/StatefulPartitionedCallЂz_mean/StatefulPartitionedCallџ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallencoder_inputconv2d_5_446326conv2d_5_446328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_445497
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_11_446331batch_normalization_11_446333batch_normalization_11_446335batch_normalization_11_446337*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_445213§
leaky_re_lu_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_445517
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0conv2d_6_446341conv2d_6_446343*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_445529
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_12_446346batch_normalization_12_446348batch_normalization_12_446350batch_normalization_12_446352*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_445277§
leaky_re_lu_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_445549
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0conv2d_7_446356conv2d_7_446358*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_445561
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_13_446361batch_normalization_13_446363batch_normalization_13_446365batch_normalization_13_446367*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_445341§
leaky_re_lu_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_445581
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_8_446371conv2d_8_446373*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_445593
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_14_446376batch_normalization_14_446378batch_normalization_14_446380batch_normalization_14_446382*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_445405§
leaky_re_lu_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_445613
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_9_446386conv2d_9_446388*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_445625
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_15_446391batch_normalization_15_446393batch_normalization_15_446395batch_normalization_15_446397*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_445469§
leaky_re_lu_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_445645м
flatten_1/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_445653
z_mean/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0z_mean_446402z_mean_446404*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_445665
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0z_log_var_446407z_log_var_446409*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_445681
"sampling_1/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sampling_1_layer_call_and_return_conditional_losses_445713w
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ|

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ}

Identity_2Identity+sampling_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШд
NoOpNoOp/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall#^sampling_1/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2H
"sampling_1/StatefulPartitionedCall"sampling_1/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:^ Z
/
_output_shapes
:џџџџџџџџџ@@
'
_user_specified_nameencoder_input
Э

R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_447186

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Э

R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_447277

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ї

§
D__inference_conv2d_8_layer_call_and_return_conditional_losses_445593

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Щ
K
/__inference_leaky_re_lu_15_layer_call_fn_447391

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_445645h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

С
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_447204

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_447214

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ@*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

С
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_445405

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_445581

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ@*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
г	
љ
E__inference_z_log_var_layer_call_and_return_conditional_losses_445681

inputs2
matmul_readvariableop_resource:
Ш.
biasadd_readvariableop_resource:	Ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
чb

C__inference_encoder_layer_call_and_return_conditional_losses_446323
encoder_input)
conv2d_5_446233:@
conv2d_5_446235:@+
batch_normalization_11_446238:@+
batch_normalization_11_446240:@+
batch_normalization_11_446242:@+
batch_normalization_11_446244:@)
conv2d_6_446248:@@
conv2d_6_446250:@+
batch_normalization_12_446253:@+
batch_normalization_12_446255:@+
batch_normalization_12_446257:@+
batch_normalization_12_446259:@)
conv2d_7_446263:@@
conv2d_7_446265:@+
batch_normalization_13_446268:@+
batch_normalization_13_446270:@+
batch_normalization_13_446272:@+
batch_normalization_13_446274:@)
conv2d_8_446278:@@
conv2d_8_446280:@+
batch_normalization_14_446283:@+
batch_normalization_14_446285:@+
batch_normalization_14_446287:@+
batch_normalization_14_446289:@)
conv2d_9_446293:@@
conv2d_9_446295:@+
batch_normalization_15_446298:@+
batch_normalization_15_446300:@+
batch_normalization_15_446302:@+
batch_normalization_15_446304:@!
z_mean_446309:
Ш
z_mean_446311:	Ш$
z_log_var_446314:
Ш
z_log_var_446316:	Ш
identity

identity_1

identity_2Ђ.batch_normalization_11/StatefulPartitionedCallЂ.batch_normalization_12/StatefulPartitionedCallЂ.batch_normalization_13/StatefulPartitionedCallЂ.batch_normalization_14/StatefulPartitionedCallЂ.batch_normalization_15/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCallЂ conv2d_7/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCallЂ"sampling_1/StatefulPartitionedCallЂ!z_log_var/StatefulPartitionedCallЂz_mean/StatefulPartitionedCallџ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallencoder_inputconv2d_5_446233conv2d_5_446235*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_445497
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_11_446238batch_normalization_11_446240batch_normalization_11_446242batch_normalization_11_446244*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_445182§
leaky_re_lu_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_445517
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0conv2d_6_446248conv2d_6_446250*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_445529
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_12_446253batch_normalization_12_446255batch_normalization_12_446257batch_normalization_12_446259*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_445246§
leaky_re_lu_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_445549
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0conv2d_7_446263conv2d_7_446265*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_445561
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_13_446268batch_normalization_13_446270batch_normalization_13_446272batch_normalization_13_446274*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_445310§
leaky_re_lu_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_445581
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_8_446278conv2d_8_446280*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_445593
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_14_446283batch_normalization_14_446285batch_normalization_14_446287batch_normalization_14_446289*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_445374§
leaky_re_lu_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_445613
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_9_446293conv2d_9_446295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_445625
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_15_446298batch_normalization_15_446300batch_normalization_15_446302batch_normalization_15_446304*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_445438§
leaky_re_lu_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_445645м
flatten_1/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_445653
z_mean/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0z_mean_446309z_mean_446311*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_445665
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0z_log_var_446314z_log_var_446316*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_445681
"sampling_1/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sampling_1_layer_call_and_return_conditional_losses_445713w
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ|

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ}

Identity_2Identity+sampling_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШд
NoOpNoOp/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall#^sampling_1/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2H
"sampling_1/StatefulPartitionedCall"sampling_1/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:^ Z
/
_output_shapes
:џџџџџџџџџ@@
'
_user_specified_nameencoder_input
Ї

§
D__inference_conv2d_6_layer_call_and_return_conditional_losses_445529

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  @
 
_user_specified_nameinputs
О
В
(__inference_encoder_layer_call_fn_446572

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
Ш

unknown_30:	Ш

unknown_31:
Ш

unknown_32:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_445718p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Б
F
*__inference_flatten_1_layer_call_fn_447401

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_445653a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ї

§
D__inference_conv2d_7_layer_call_and_return_conditional_losses_447142

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Э

R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_445246

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Щ
Й
(__inference_encoder_layer_call_fn_446230
encoder_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
Ш

unknown_30:	Ш

unknown_31:
Ш

unknown_32:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*:
_read_only_resource_inputs
	
 !"*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_446078p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:џџџџџџџџџ@@
'
_user_specified_nameencoder_input
Ч
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_445653

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
а	
і
B__inference_z_mean_layer_call_and_return_conditional_losses_445665

inputs2
matmul_readvariableop_resource:
Ш.
biasadd_readvariableop_resource:	Ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Д
В
(__inference_encoder_layer_call_fn_446649

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
Ш

unknown_30:	Ш

unknown_31:
Ш

unknown_32:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*:
_read_only_resource_inputs
	
 !"*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_446078p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ГJ

__inference__traced_save_447604
file_prefix.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop;
7savev2_batch_normalization_12_gamma_read_readvariableop:
6savev2_batch_normalization_12_beta_read_readvariableopA
=savev2_batch_normalization_12_moving_mean_read_readvariableopE
Asavev2_batch_normalization_12_moving_variance_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop;
7savev2_batch_normalization_13_gamma_read_readvariableop:
6savev2_batch_normalization_13_beta_read_readvariableopA
=savev2_batch_normalization_13_moving_mean_read_readvariableopE
Asavev2_batch_normalization_13_moving_variance_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop;
7savev2_batch_normalization_14_gamma_read_readvariableop:
6savev2_batch_normalization_14_beta_read_readvariableopA
=savev2_batch_normalization_14_moving_mean_read_readvariableopE
Asavev2_batch_normalization_14_moving_variance_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop;
7savev2_batch_normalization_15_gamma_read_readvariableop:
6savev2_batch_normalization_15_beta_read_readvariableopA
=savev2_batch_normalization_15_moving_mean_read_readvariableopE
Asavev2_batch_normalization_15_moving_variance_read_readvariableop,
(savev2_z_mean_kernel_read_readvariableop*
&savev2_z_mean_bias_read_readvariableop/
+savev2_z_log_var_kernel_read_readvariableop-
)savev2_z_log_var_bias_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ї
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*а
valueЦBУ#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHГ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B щ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop7savev2_batch_normalization_12_gamma_read_readvariableop6savev2_batch_normalization_12_beta_read_readvariableop=savev2_batch_normalization_12_moving_mean_read_readvariableopAsavev2_batch_normalization_12_moving_variance_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop7savev2_batch_normalization_13_gamma_read_readvariableop6savev2_batch_normalization_13_beta_read_readvariableop=savev2_batch_normalization_13_moving_mean_read_readvariableopAsavev2_batch_normalization_13_moving_variance_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop7savev2_batch_normalization_14_gamma_read_readvariableop6savev2_batch_normalization_14_beta_read_readvariableop=savev2_batch_normalization_14_moving_mean_read_readvariableopAsavev2_batch_normalization_14_moving_variance_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop7savev2_batch_normalization_15_gamma_read_readvariableop6savev2_batch_normalization_15_beta_read_readvariableop=savev2_batch_normalization_15_moving_mean_read_readvariableopAsavev2_batch_normalization_15_moving_variance_read_readvariableop(savev2_z_mean_kernel_read_readvariableop&savev2_z_mean_bias_read_readvariableop+savev2_z_log_var_kernel_read_readvariableop)savev2_z_log_var_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Џ
_input_shapes
: :@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:
Ш:Ш:
Ш:Ш: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
Ш:! 

_output_shapes	
:Ш:&!"
 
_output_shapes
:
Ш:!"

_output_shapes	
:Ш:#

_output_shapes
: 
	
в
7__inference_batch_normalization_13_layer_call_fn_447155

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_445310
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

С
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_445341

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ї

§
D__inference_conv2d_8_layer_call_and_return_conditional_losses_447233

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Щ
K
/__inference_leaky_re_lu_11_layer_call_fn_447027

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_445517h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ  @:W S
/
_output_shapes
:џџџџџџџџџ  @
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_447123

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ@*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Щ
K
/__inference_leaky_re_lu_14_layer_call_fn_447300

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_445613h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_14_layer_call_fn_447259

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_445405
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_15_layer_call_fn_447350

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_445469
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Э

R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_447368

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_14_layer_call_fn_447246

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_445374
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

С
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_447022

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Шb

C__inference_encoder_layer_call_and_return_conditional_losses_446078

inputs)
conv2d_5_445988:@
conv2d_5_445990:@+
batch_normalization_11_445993:@+
batch_normalization_11_445995:@+
batch_normalization_11_445997:@+
batch_normalization_11_445999:@)
conv2d_6_446003:@@
conv2d_6_446005:@+
batch_normalization_12_446008:@+
batch_normalization_12_446010:@+
batch_normalization_12_446012:@+
batch_normalization_12_446014:@)
conv2d_7_446018:@@
conv2d_7_446020:@+
batch_normalization_13_446023:@+
batch_normalization_13_446025:@+
batch_normalization_13_446027:@+
batch_normalization_13_446029:@)
conv2d_8_446033:@@
conv2d_8_446035:@+
batch_normalization_14_446038:@+
batch_normalization_14_446040:@+
batch_normalization_14_446042:@+
batch_normalization_14_446044:@)
conv2d_9_446048:@@
conv2d_9_446050:@+
batch_normalization_15_446053:@+
batch_normalization_15_446055:@+
batch_normalization_15_446057:@+
batch_normalization_15_446059:@!
z_mean_446064:
Ш
z_mean_446066:	Ш$
z_log_var_446069:
Ш
z_log_var_446071:	Ш
identity

identity_1

identity_2Ђ.batch_normalization_11/StatefulPartitionedCallЂ.batch_normalization_12/StatefulPartitionedCallЂ.batch_normalization_13/StatefulPartitionedCallЂ.batch_normalization_14/StatefulPartitionedCallЂ.batch_normalization_15/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCallЂ conv2d_7/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCallЂ"sampling_1/StatefulPartitionedCallЂ!z_log_var/StatefulPartitionedCallЂz_mean/StatefulPartitionedCallј
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_445988conv2d_5_445990*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_445497
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_11_445993batch_normalization_11_445995batch_normalization_11_445997batch_normalization_11_445999*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_445213§
leaky_re_lu_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_445517
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0conv2d_6_446003conv2d_6_446005*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_445529
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_12_446008batch_normalization_12_446010batch_normalization_12_446012batch_normalization_12_446014*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_445277§
leaky_re_lu_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_445549
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0conv2d_7_446018conv2d_7_446020*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_445561
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_13_446023batch_normalization_13_446025batch_normalization_13_446027batch_normalization_13_446029*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_445341§
leaky_re_lu_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_445581
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_8_446033conv2d_8_446035*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_445593
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_14_446038batch_normalization_14_446040batch_normalization_14_446042batch_normalization_14_446044*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_445405§
leaky_re_lu_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_445613
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_9_446048conv2d_9_446050*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_445625
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_15_446053batch_normalization_15_446055batch_normalization_15_446057batch_normalization_15_446059*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_445469§
leaky_re_lu_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_445645м
flatten_1/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_445653
z_mean/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0z_mean_446064z_mean_446066*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_445665
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0z_log_var_446069z_log_var_446071*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_445681
"sampling_1/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sampling_1_layer_call_and_return_conditional_losses_445713w
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ|

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ}

Identity_2Identity+sampling_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШд
NoOpNoOp/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall#^sampling_1/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2H
"sampling_1/StatefulPartitionedCall"sampling_1/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ъ

)__inference_conv2d_7_layer_call_fn_447132

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_445561w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_11_layer_call_fn_446986

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_445213
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_445549

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ@*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ї

§
D__inference_conv2d_6_layer_call_and_return_conditional_losses_447051

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  @
 
_user_specified_nameinputs
Ч
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_447407

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

С
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_447113

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

u
F__inference_sampling_1_layer_call_and_return_conditional_losses_447477
inputs_0
inputs_1
identity=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Shape_1Shapeinputs_0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?З
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0*
seedБџх)*
seed2ѓВџ
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:џџџџџџџџџШJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
mulMulmul/x:output:0inputs_1*
T0*(
_output_shapes
:џџџџџџџџџШF
ExpExpmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ[
mul_1MulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:џџџџџџџџџШT
addAddV2inputs_0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ:R N
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
inputs/1

С
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_447295

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
г	
љ
E__inference_z_log_var_layer_call_and_return_conditional_losses_447445

inputs2
matmul_readvariableop_resource:
Ш.
biasadd_readvariableop_resource:	Ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_11_layer_call_fn_446973

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_445182
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
г
Й
(__inference_encoder_layer_call_fn_445793
encoder_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
Ш

unknown_30:	Ш

unknown_31:
Ш

unknown_32:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_445718p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:џџџџџџџџџ@@
'
_user_specified_nameencoder_input
Э

R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_445374

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Щ
K
/__inference_leaky_re_lu_13_layer_call_fn_447209

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_445581h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

ь
"__inference__traced_restore_447716
file_prefix:
 assignvariableop_conv2d_5_kernel:@.
 assignvariableop_1_conv2d_5_bias:@=
/assignvariableop_2_batch_normalization_11_gamma:@<
.assignvariableop_3_batch_normalization_11_beta:@C
5assignvariableop_4_batch_normalization_11_moving_mean:@G
9assignvariableop_5_batch_normalization_11_moving_variance:@<
"assignvariableop_6_conv2d_6_kernel:@@.
 assignvariableop_7_conv2d_6_bias:@=
/assignvariableop_8_batch_normalization_12_gamma:@<
.assignvariableop_9_batch_normalization_12_beta:@D
6assignvariableop_10_batch_normalization_12_moving_mean:@H
:assignvariableop_11_batch_normalization_12_moving_variance:@=
#assignvariableop_12_conv2d_7_kernel:@@/
!assignvariableop_13_conv2d_7_bias:@>
0assignvariableop_14_batch_normalization_13_gamma:@=
/assignvariableop_15_batch_normalization_13_beta:@D
6assignvariableop_16_batch_normalization_13_moving_mean:@H
:assignvariableop_17_batch_normalization_13_moving_variance:@=
#assignvariableop_18_conv2d_8_kernel:@@/
!assignvariableop_19_conv2d_8_bias:@>
0assignvariableop_20_batch_normalization_14_gamma:@=
/assignvariableop_21_batch_normalization_14_beta:@D
6assignvariableop_22_batch_normalization_14_moving_mean:@H
:assignvariableop_23_batch_normalization_14_moving_variance:@=
#assignvariableop_24_conv2d_9_kernel:@@/
!assignvariableop_25_conv2d_9_bias:@>
0assignvariableop_26_batch_normalization_15_gamma:@=
/assignvariableop_27_batch_normalization_15_beta:@D
6assignvariableop_28_batch_normalization_15_moving_mean:@H
:assignvariableop_29_batch_normalization_15_moving_variance:@5
!assignvariableop_30_z_mean_kernel:
Ш.
assignvariableop_31_z_mean_bias:	Ш8
$assignvariableop_32_z_log_var_kernel:
Ш1
"assignvariableop_33_z_log_var_bias:	Ш
identity_35ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Њ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*а
valueЦBУ#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЖ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B а
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ђ
_output_shapes
:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv2d_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_11_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_11_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_11_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_11_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_12_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_12_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_12_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_12_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_7_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_7_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_13_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_13_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_13_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_13_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv2d_8_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv2d_8_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_14_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_14_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_14_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_14_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp#assignvariableop_24_conv2d_9_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp!assignvariableop_25_conv2d_9_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_15_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_15_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_15_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_15_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp!assignvariableop_30_z_mean_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_z_mean_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp$assignvariableop_32_z_log_var_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp"assignvariableop_33_z_log_var_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Л
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_35IdentityIdentity_34:output:0^NoOp_1*
T0*
_output_shapes
: Ј
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_35Identity_35:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Э

R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_445310

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
яе
Д!
C__inference_encoder_layer_call_and_return_conditional_losses_446941

inputsA
'conv2d_5_conv2d_readvariableop_resource:@6
(conv2d_5_biasadd_readvariableop_resource:@<
.batch_normalization_11_readvariableop_resource:@>
0batch_normalization_11_readvariableop_1_resource:@M
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_6_conv2d_readvariableop_resource:@@6
(conv2d_6_biasadd_readvariableop_resource:@<
.batch_normalization_12_readvariableop_resource:@>
0batch_normalization_12_readvariableop_1_resource:@M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_7_conv2d_readvariableop_resource:@@6
(conv2d_7_biasadd_readvariableop_resource:@<
.batch_normalization_13_readvariableop_resource:@>
0batch_normalization_13_readvariableop_1_resource:@M
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_8_conv2d_readvariableop_resource:@@6
(conv2d_8_biasadd_readvariableop_resource:@<
.batch_normalization_14_readvariableop_resource:@>
0batch_normalization_14_readvariableop_1_resource:@M
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@@6
(conv2d_9_biasadd_readvariableop_resource:@<
.batch_normalization_15_readvariableop_resource:@>
0batch_normalization_15_readvariableop_1_resource:@M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@9
%z_mean_matmul_readvariableop_resource:
Ш5
&z_mean_biasadd_readvariableop_resource:	Ш<
(z_log_var_matmul_readvariableop_resource:
Ш8
)z_log_var_biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2Ђ%batch_normalization_11/AssignNewValueЂ'batch_normalization_11/AssignNewValue_1Ђ6batch_normalization_11/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_11/ReadVariableOpЂ'batch_normalization_11/ReadVariableOp_1Ђ%batch_normalization_12/AssignNewValueЂ'batch_normalization_12/AssignNewValue_1Ђ6batch_normalization_12/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_12/ReadVariableOpЂ'batch_normalization_12/ReadVariableOp_1Ђ%batch_normalization_13/AssignNewValueЂ'batch_normalization_13/AssignNewValue_1Ђ6batch_normalization_13/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_13/ReadVariableOpЂ'batch_normalization_13/ReadVariableOp_1Ђ%batch_normalization_14/AssignNewValueЂ'batch_normalization_14/AssignNewValue_1Ђ6batch_normalization_14/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_14/ReadVariableOpЂ'batch_normalization_14/ReadVariableOp_1Ђ%batch_normalization_15/AssignNewValueЂ'batch_normalization_15/AssignNewValue_1Ђ6batch_normalization_15/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_15/ReadVariableOpЂ'batch_normalization_15/ReadVariableOp_1Ђconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂconv2d_6/BiasAdd/ReadVariableOpЂconv2d_6/Conv2D/ReadVariableOpЂconv2d_7/BiasAdd/ReadVariableOpЂconv2d_7/Conv2D/ReadVariableOpЂconv2d_8/BiasAdd/ReadVariableOpЂconv2d_8/Conv2D/ReadVariableOpЂconv2d_9/BiasAdd/ReadVariableOpЂconv2d_9/Conv2D/ReadVariableOpЂ z_log_var/BiasAdd/ReadVariableOpЂz_log_var/MatMul/ReadVariableOpЂz_mean/BiasAdd/ReadVariableOpЂz_mean/MatMul/ReadVariableOp
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ћ
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  @
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3conv2d_5/BiasAdd:output:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ  @:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_11/AssignNewValueAssignVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource4batch_normalization_11/FusedBatchNormV3:batch_mean:07^batch_normalization_11/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_11/AssignNewValue_1AssignVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_11/FusedBatchNormV3:batch_variance:09^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
leaky_re_lu_11/LeakyRelu	LeakyRelu+batch_normalization_11/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ  @*
alpha%>
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
conv2d_6/Conv2DConv2D&leaky_re_lu_11/LeakyRelu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_6/BiasAdd:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_12/AssignNewValueAssignVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource4batch_normalization_12/FusedBatchNormV3:batch_mean:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_12/AssignNewValue_1AssignVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_12/FusedBatchNormV3:batch_variance:09^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
leaky_re_lu_12/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
conv2d_7/Conv2DConv2D&leaky_re_lu_12/LeakyRelu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_7/BiasAdd:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_13/AssignNewValueAssignVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource4batch_normalization_13/FusedBatchNormV3:batch_mean:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_13/AssignNewValue_1AssignVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_13/FusedBatchNormV3:batch_variance:09^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
leaky_re_lu_13/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
conv2d_8/Conv2DConv2D&leaky_re_lu_13/LeakyRelu:activations:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_8/BiasAdd:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_14/AssignNewValueAssignVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource4batch_normalization_14/FusedBatchNormV3:batch_mean:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_14/AssignNewValue_1AssignVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_14/FusedBatchNormV3:batch_variance:09^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
leaky_re_lu_14/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
conv2d_9/Conv2DConv2D&leaky_re_lu_14/LeakyRelu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_9/BiasAdd:output:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
leaky_re_lu_15/LeakyRelu	LeakyRelu+batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ@*
alpha%>`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_1/ReshapeReshape&leaky_re_lu_15/LeakyRelu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
z_mean/MatMulMatMulflatten_1/Reshape:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
z_log_var/MatMulMatMulflatten_1/Reshape:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШW
sampling_1/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:h
sampling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 sampling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 sampling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sampling_1/strided_sliceStridedSlicesampling_1/Shape:output:0'sampling_1/strided_slice/stack:output:0)sampling_1/strided_slice/stack_1:output:0)sampling_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
sampling_1/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:j
 sampling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:l
"sampling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"sampling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sampling_1/strided_slice_1StridedSlicesampling_1/Shape_1:output:0)sampling_1/strided_slice_1/stack:output:0+sampling_1/strided_slice_1/stack_1:output:0+sampling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
sampling_1/random_normal/shapePack!sampling_1/strided_slice:output:0#sampling_1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:b
sampling_1/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    d
sampling_1/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Э
-sampling_1/random_normal/RandomStandardNormalRandomStandardNormal'sampling_1/random_normal/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0*
seedБџх)*
seed2мыЯИ
sampling_1/random_normal/mulMul6sampling_1/random_normal/RandomStandardNormal:output:0(sampling_1/random_normal/stddev:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
sampling_1/random_normalAddV2 sampling_1/random_normal/mul:z:0&sampling_1/random_normal/mean:output:0*
T0*(
_output_shapes
:џџџџџџџџџШU
sampling_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
sampling_1/mulMulsampling_1/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ\
sampling_1/ExpExpsampling_1/mul:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
sampling_1/mul_1Mulsampling_1/Exp:y:0sampling_1/random_normal:z:0*
T0*(
_output_shapes
:џџџџџџџџџШy
sampling_1/addAddV2z_mean/BiasAdd:output:0sampling_1/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШg
IdentityIdentityz_mean/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШl

Identity_1Identityz_log_var/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШd

Identity_2Identitysampling_1/add:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
NoOpNoOp&^batch_normalization_11/AssignNewValue(^batch_normalization_11/AssignNewValue_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_1&^batch_normalization_12/AssignNewValue(^batch_normalization_12/AssignNewValue_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1&^batch_normalization_13/AssignNewValue(^batch_normalization_13/AssignNewValue_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1&^batch_normalization_14/AssignNewValue(^batch_normalization_14/AssignNewValue_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1 ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_11/AssignNewValue%batch_normalization_11/AssignNewValue2R
'batch_normalization_11/AssignNewValue_1'batch_normalization_11/AssignNewValue_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12N
%batch_normalization_12/AssignNewValue%batch_normalization_12/AssignNewValue2R
'batch_normalization_12/AssignNewValue_1'batch_normalization_12/AssignNewValue_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12N
%batch_normalization_13/AssignNewValue%batch_normalization_13/AssignNewValue2R
'batch_normalization_13/AssignNewValue_1'batch_normalization_13/AssignNewValue_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12N
%batch_normalization_14/AssignNewValue%batch_normalization_14/AssignNewValue2R
'batch_normalization_14/AssignNewValue_1'batch_normalization_14/AssignNewValue_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs

С
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_445277

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
	
в
7__inference_batch_normalization_12_layer_call_fn_447064

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_445246
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
­
Е
$__inference_signature_wrapper_446495
encoder_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
Ш

unknown_30:	Ш

unknown_31:
Ш

unknown_32:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_445160p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:џџџџџџџџџ@@
'
_user_specified_nameencoder_input
ъ

)__inference_conv2d_6_layer_call_fn_447041

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_445529w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  @
 
_user_specified_nameinputs

С
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_445213

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

С
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_447386

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ў
t
+__inference_sampling_1_layer_call_fn_447451
inputs_0
inputs_1
identityЂStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sampling_1_layer_call_and_return_conditional_losses_445713p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
inputs/1
Ї

§
D__inference_conv2d_9_layer_call_and_return_conditional_losses_447324

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_447305

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ@*
alpha%>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs"Е	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*П
serving_defaultЋ
O
encoder_input>
serving_default_encoder_input:0џџџџџџџџџ@@?

sampling_11
StatefulPartitionedCall:0џџџџџџџџџШ>
	z_log_var1
StatefulPartitionedCall:1џџџџџџџџџШ;
z_mean1
StatefulPartitionedCall:2џџџџџџџџџШtensorflow/serving/predict:Ь

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer-19
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
н
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias
 %_jit_compiled_convolution_op"
_tf_keras_layer
ъ
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,axis
	-gamma
.beta
/moving_mean
0moving_variance"
_tf_keras_layer
Ѕ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
н
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias
 ?_jit_compiled_convolution_op"
_tf_keras_layer
ъ
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Faxis
	Ggamma
Hbeta
Imoving_mean
Jmoving_variance"
_tf_keras_layer
Ѕ
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
н
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias
 Y_jit_compiled_convolution_op"
_tf_keras_layer
ъ
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance"
_tf_keras_layer
Ѕ
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
н
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
 s_jit_compiled_convolution_op"
_tf_keras_layer
ъ
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
zaxis
	{gamma
|beta
}moving_mean
~moving_variance"
_tf_keras_layer
Њ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
moving_mean
moving_variance"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
 trainable_variables
Ёregularization_losses
Ђ	keras_api
Ѓ__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Ј	keras_api
Љ__call__
+Њ&call_and_return_all_conditional_losses
Ћkernel
	Ќbias"
_tf_keras_layer
У
­	variables
Ўtrainable_variables
Џregularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Гkernel
	Дbias"
_tf_keras_layer
Ћ
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"
_tf_keras_layer
А
#0
$1
-2
.3
/4
05
=6
>7
G8
H9
I10
J11
W12
X13
a14
b15
c16
d17
q18
r19
{20
|21
}22
~23
24
25
26
27
28
29
Ћ30
Ќ31
Г32
Д33"
trackable_list_wrapper
о
#0
$1
-2
.3
=4
>5
G6
H7
W8
X9
a10
b11
q12
r13
{14
|15
16
17
18
19
Ћ20
Ќ21
Г22
Д23"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
н
Рtrace_0
Сtrace_1
Тtrace_2
Уtrace_32ъ
(__inference_encoder_layer_call_fn_445793
(__inference_encoder_layer_call_fn_446572
(__inference_encoder_layer_call_fn_446649
(__inference_encoder_layer_call_fn_446230П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zРtrace_0zСtrace_1zТtrace_2zУtrace_3
Щ
Фtrace_0
Хtrace_1
Цtrace_2
Чtrace_32ж
C__inference_encoder_layer_call_and_return_conditional_losses_446795
C__inference_encoder_layer_call_and_return_conditional_losses_446941
C__inference_encoder_layer_call_and_return_conditional_losses_446323
C__inference_encoder_layer_call_and_return_conditional_losses_446416П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0zХtrace_1zЦtrace_2zЧtrace_3
вBЯ
!__inference__wrapped_model_445160encoder_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
-
Шserving_default"
signature_map
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
я
Юtrace_02а
)__inference_conv2d_5_layer_call_fn_446950Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЮtrace_0

Яtrace_02ы
D__inference_conv2d_5_layer_call_and_return_conditional_losses_446960Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЯtrace_0
):'@2conv2d_5/kernel
:@2conv2d_5/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
-0
.1
/2
03"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
у
еtrace_0
жtrace_12Ј
7__inference_batch_normalization_11_layer_call_fn_446973
7__inference_batch_normalization_11_layer_call_fn_446986Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zеtrace_0zжtrace_1

зtrace_0
иtrace_12о
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_447004
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_447022Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zзtrace_0zиtrace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_11/gamma
):'@2batch_normalization_11/beta
2:0@ (2"batch_normalization_11/moving_mean
6:4@ (2&batch_normalization_11/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
ѕ
оtrace_02ж
/__inference_leaky_re_lu_11_layer_call_fn_447027Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zоtrace_0

пtrace_02ё
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_447032Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zпtrace_0
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
я
хtrace_02а
)__inference_conv2d_6_layer_call_fn_447041Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zхtrace_0

цtrace_02ы
D__inference_conv2d_6_layer_call_and_return_conditional_losses_447051Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zцtrace_0
):'@@2conv2d_6/kernel
:@2conv2d_6/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
G0
H1
I2
J3"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
у
ьtrace_0
эtrace_12Ј
7__inference_batch_normalization_12_layer_call_fn_447064
7__inference_batch_normalization_12_layer_call_fn_447077Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zьtrace_0zэtrace_1

юtrace_0
яtrace_12о
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_447095
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_447113Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zюtrace_0zяtrace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_12/gamma
):'@2batch_normalization_12/beta
2:0@ (2"batch_normalization_12/moving_mean
6:4@ (2&batch_normalization_12/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
№non_trainable_variables
ёlayers
ђmetrics
 ѓlayer_regularization_losses
єlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ѕ
ѕtrace_02ж
/__inference_leaky_re_lu_12_layer_call_fn_447118Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zѕtrace_0

іtrace_02ё
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_447123Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zіtrace_0
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
їnon_trainable_variables
јlayers
љmetrics
 њlayer_regularization_losses
ћlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
я
ќtrace_02а
)__inference_conv2d_7_layer_call_fn_447132Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zќtrace_0

§trace_02ы
D__inference_conv2d_7_layer_call_and_return_conditional_losses_447142Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z§trace_0
):'@@2conv2d_7/kernel
:@2conv2d_7/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
a0
b1
c2
d3"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ўnon_trainable_variables
џlayers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
у
trace_0
trace_12Ј
7__inference_batch_normalization_13_layer_call_fn_447155
7__inference_batch_normalization_13_layer_call_fn_447168Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12о
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_447186
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_447204Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_13/gamma
):'@2batch_normalization_13/beta
2:0@ (2"batch_normalization_13/moving_mean
6:4@ (2&batch_normalization_13/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
ѕ
trace_02ж
/__inference_leaky_re_lu_13_layer_call_fn_447209Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ё
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_447214Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
я
trace_02а
)__inference_conv2d_8_layer_call_fn_447223Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ы
D__inference_conv2d_8_layer_call_and_return_conditional_losses_447233Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
):'@@2conv2d_8/kernel
:@2conv2d_8/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
{0
|1
}2
~3"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
у
trace_0
trace_12Ј
7__inference_batch_normalization_14_layer_call_fn_447246
7__inference_batch_normalization_14_layer_call_fn_447259Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12о
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_447277
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_447295Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_14/gamma
):'@2batch_normalization_14/beta
2:0@ (2"batch_normalization_14/moving_mean
6:4@ (2&batch_normalization_14/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
З
non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ѕ
Ѓtrace_02ж
/__inference_leaky_re_lu_14_layer_call_fn_447300Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЃtrace_0

Єtrace_02ё
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_447305Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЄtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
я
Њtrace_02а
)__inference_conv2d_9_layer_call_fn_447314Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЊtrace_0

Ћtrace_02ы
D__inference_conv2d_9_layer_call_and_return_conditional_losses_447324Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЋtrace_0
):'@@2conv2d_9/kernel
:@2conv2d_9/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ќnon_trainable_variables
­layers
Ўmetrics
 Џlayer_regularization_losses
Аlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
у
Бtrace_0
Вtrace_12Ј
7__inference_batch_normalization_15_layer_call_fn_447337
7__inference_batch_normalization_15_layer_call_fn_447350Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zБtrace_0zВtrace_1

Гtrace_0
Дtrace_12о
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_447368
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_447386Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zГtrace_0zДtrace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_15/gamma
):'@2batch_normalization_15/beta
2:0@ (2"batch_normalization_15/moving_mean
6:4@ (2&batch_normalization_15/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ѕ
Кtrace_02ж
/__inference_leaky_re_lu_15_layer_call_fn_447391Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zКtrace_0

Лtrace_02ё
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_447396Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЛtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
	variables
 trainable_variables
Ёregularization_losses
Ѓ__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
№
Сtrace_02б
*__inference_flatten_1_layer_call_fn_447401Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zСtrace_0

Тtrace_02ь
E__inference_flatten_1_layer_call_and_return_conditional_losses_447407Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zТtrace_0
0
Ћ0
Ќ1"
trackable_list_wrapper
0
Ћ0
Ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
э
Шtrace_02Ю
'__inference_z_mean_layer_call_fn_447416Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zШtrace_0

Щtrace_02щ
B__inference_z_mean_layer_call_and_return_conditional_losses_447426Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЩtrace_0
!:
Ш2z_mean/kernel
:Ш2z_mean/bias
0
Г0
Д1"
trackable_list_wrapper
0
Г0
Д1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
­	variables
Ўtrainable_variables
Џregularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
№
Яtrace_02б
*__inference_z_log_var_layer_call_fn_447435Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЯtrace_0

аtrace_02ь
E__inference_z_log_var_layer_call_and_return_conditional_losses_447445Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zаtrace_0
$:"
Ш2z_log_var/kernel
:Ш2z_log_var/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
ё
жtrace_02в
+__inference_sampling_1_layer_call_fn_447451Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zжtrace_0

зtrace_02э
F__inference_sampling_1_layer_call_and_return_conditional_losses_447477Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zзtrace_0
h
/0
01
I2
J3
c4
d5
}6
~7
8
9"
trackable_list_wrapper
Ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B§
(__inference_encoder_layer_call_fn_445793encoder_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
(__inference_encoder_layer_call_fn_446572inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
(__inference_encoder_layer_call_fn_446649inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
(__inference_encoder_layer_call_fn_446230encoder_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
C__inference_encoder_layer_call_and_return_conditional_losses_446795inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
C__inference_encoder_layer_call_and_return_conditional_losses_446941inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
C__inference_encoder_layer_call_and_return_conditional_losses_446323encoder_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
C__inference_encoder_layer_call_and_return_conditional_losses_446416encoder_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
бBЮ
$__inference_signature_wrapper_446495encoder_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
нBк
)__inference_conv2d_5_layer_call_fn_446950inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_conv2d_5_layer_call_and_return_conditional_losses_446960inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
7__inference_batch_normalization_11_layer_call_fn_446973inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
7__inference_batch_normalization_11_layer_call_fn_446986inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_447004inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_447022inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
уBр
/__inference_leaky_re_lu_11_layer_call_fn_447027inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_447032inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
нBк
)__inference_conv2d_6_layer_call_fn_447041inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_conv2d_6_layer_call_and_return_conditional_losses_447051inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
7__inference_batch_normalization_12_layer_call_fn_447064inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
7__inference_batch_normalization_12_layer_call_fn_447077inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_447095inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_447113inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
уBр
/__inference_leaky_re_lu_12_layer_call_fn_447118inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_447123inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
нBк
)__inference_conv2d_7_layer_call_fn_447132inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_conv2d_7_layer_call_and_return_conditional_losses_447142inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
7__inference_batch_normalization_13_layer_call_fn_447155inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
7__inference_batch_normalization_13_layer_call_fn_447168inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_447186inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_447204inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
уBр
/__inference_leaky_re_lu_13_layer_call_fn_447209inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_447214inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
нBк
)__inference_conv2d_8_layer_call_fn_447223inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_conv2d_8_layer_call_and_return_conditional_losses_447233inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
7__inference_batch_normalization_14_layer_call_fn_447246inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
7__inference_batch_normalization_14_layer_call_fn_447259inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_447277inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_447295inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
уBр
/__inference_leaky_re_lu_14_layer_call_fn_447300inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_447305inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
нBк
)__inference_conv2d_9_layer_call_fn_447314inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_conv2d_9_layer_call_and_return_conditional_losses_447324inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
7__inference_batch_normalization_15_layer_call_fn_447337inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
7__inference_batch_normalization_15_layer_call_fn_447350inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_447368inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_447386inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
уBр
/__inference_leaky_re_lu_15_layer_call_fn_447391inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_447396inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
оBл
*__inference_flatten_1_layer_call_fn_447401inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
E__inference_flatten_1_layer_call_and_return_conditional_losses_447407inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
лBи
'__inference_z_mean_layer_call_fn_447416inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
B__inference_z_mean_layer_call_and_return_conditional_losses_447426inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
оBл
*__inference_z_log_var_layer_call_fn_447435inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
E__inference_z_log_var_layer_call_and_return_conditional_losses_447445inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
ыBш
+__inference_sampling_1_layer_call_fn_447451inputs/0inputs/1"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_sampling_1_layer_call_and_return_conditional_losses_447477inputs/0inputs/1"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 А
!__inference__wrapped_model_445160,#$-./0=>GHIJWXabcdqr{|}~ЋЌГД>Ђ;
4Ђ1
/,
encoder_inputџџџџџџџџџ@@
Њ "Њ
3

sampling_1%"

sampling_1џџџџџџџџџШ
1
	z_log_var$!
	z_log_varџџџџџџџџџШ
+
z_mean!
z_meanџџџџџџџџџШэ
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_447004-./0MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 э
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_447022-./0MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Х
7__inference_batch_normalization_11_layer_call_fn_446973-./0MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Х
7__inference_batch_normalization_11_layer_call_fn_446986-./0MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@э
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_447095GHIJMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 э
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_447113GHIJMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Х
7__inference_batch_normalization_12_layer_call_fn_447064GHIJMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Х
7__inference_batch_normalization_12_layer_call_fn_447077GHIJMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@э
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_447186abcdMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 э
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_447204abcdMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Х
7__inference_batch_normalization_13_layer_call_fn_447155abcdMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Х
7__inference_batch_normalization_13_layer_call_fn_447168abcdMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@э
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_447277{|}~MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 э
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_447295{|}~MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Х
7__inference_batch_normalization_14_layer_call_fn_447246{|}~MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Х
7__inference_batch_normalization_14_layer_call_fn_447259{|}~MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ё
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_447368MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 ё
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_447386MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Щ
7__inference_batch_normalization_15_layer_call_fn_447337MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Щ
7__inference_batch_normalization_15_layer_call_fn_447350MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Д
D__inference_conv2d_5_layer_call_and_return_conditional_losses_446960l#$7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@@
Њ "-Ђ*
# 
0џџџџџџџџџ  @
 
)__inference_conv2d_5_layer_call_fn_446950_#$7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@@
Њ " џџџџџџџџџ  @Д
D__inference_conv2d_6_layer_call_and_return_conditional_losses_447051l=>7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  @
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
)__inference_conv2d_6_layer_call_fn_447041_=>7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  @
Њ " џџџџџџџџџ@Д
D__inference_conv2d_7_layer_call_and_return_conditional_losses_447142lWX7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
)__inference_conv2d_7_layer_call_fn_447132_WX7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@Д
D__inference_conv2d_8_layer_call_and_return_conditional_losses_447233lqr7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
)__inference_conv2d_8_layer_call_fn_447223_qr7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@Ж
D__inference_conv2d_9_layer_call_and_return_conditional_losses_447324n7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
)__inference_conv2d_9_layer_call_fn_447314a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@­
C__inference_encoder_layer_call_and_return_conditional_losses_446323х,#$-./0=>GHIJWXabcdqr{|}~ЋЌГДFЂC
<Ђ9
/,
encoder_inputџџџџџџџџџ@@
p 

 
Њ "mЂj
c`

0/0џџџџџџџџџШ

0/1џџџџџџџџџШ

0/2џџџџџџџџџШ
 ­
C__inference_encoder_layer_call_and_return_conditional_losses_446416х,#$-./0=>GHIJWXabcdqr{|}~ЋЌГДFЂC
<Ђ9
/,
encoder_inputџџџџџџџџџ@@
p

 
Њ "mЂj
c`

0/0џџџџџџџџџШ

0/1џџџџџџџџџШ

0/2џџџџџџџџџШ
 І
C__inference_encoder_layer_call_and_return_conditional_losses_446795о,#$-./0=>GHIJWXabcdqr{|}~ЋЌГД?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ@@
p 

 
Њ "mЂj
c`

0/0џџџџџџџџџШ

0/1џџџџџџџџџШ

0/2џџџџџџџџџШ
 І
C__inference_encoder_layer_call_and_return_conditional_losses_446941о,#$-./0=>GHIJWXabcdqr{|}~ЋЌГД?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ@@
p

 
Њ "mЂj
c`

0/0џџџџџџџџџШ

0/1џџџџџџџџџШ

0/2џџџџџџџџџШ
 
(__inference_encoder_layer_call_fn_445793е,#$-./0=>GHIJWXabcdqr{|}~ЋЌГДFЂC
<Ђ9
/,
encoder_inputџџџџџџџџџ@@
p 

 
Њ "]Z

0џџџџџџџџџШ

1џџџџџџџџџШ

2џџџџџџџџџШ
(__inference_encoder_layer_call_fn_446230е,#$-./0=>GHIJWXabcdqr{|}~ЋЌГДFЂC
<Ђ9
/,
encoder_inputџџџџџџџџџ@@
p

 
Њ "]Z

0џџџџџџџџџШ

1џџџџџџџџџШ

2џџџџџџџџџШћ
(__inference_encoder_layer_call_fn_446572Ю,#$-./0=>GHIJWXabcdqr{|}~ЋЌГД?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ@@
p 

 
Њ "]Z

0џџџџџџџџџШ

1џџџџџџџџџШ

2џџџџџџџџџШћ
(__inference_encoder_layer_call_fn_446649Ю,#$-./0=>GHIJWXabcdqr{|}~ЋЌГД?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ@@
p

 
Њ "]Z

0џџџџџџџџџШ

1џџџџџџџџџШ

2џџџџџџџџџШЊ
E__inference_flatten_1_layer_call_and_return_conditional_losses_447407a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "&Ђ#

0џџџџџџџџџ
 
*__inference_flatten_1_layer_call_fn_447401T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "џџџџџџџџџЖ
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_447032h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  @
Њ "-Ђ*
# 
0џџџџџџџџџ  @
 
/__inference_leaky_re_lu_11_layer_call_fn_447027[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  @
Њ " џџџџџџџџџ  @Ж
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_447123h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
/__inference_leaky_re_lu_12_layer_call_fn_447118[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@Ж
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_447214h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
/__inference_leaky_re_lu_13_layer_call_fn_447209[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@Ж
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_447305h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
/__inference_leaky_re_lu_14_layer_call_fn_447300[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@Ж
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_447396h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
/__inference_leaky_re_lu_15_layer_call_fn_447391[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@б
F__inference_sampling_1_layer_call_and_return_conditional_losses_447477\ЂY
RЂO
MJ
# 
inputs/0џџџџџџџџџШ
# 
inputs/1џџџџџџџџџШ
Њ "&Ђ#

0џџџџџџџџџШ
 Ј
+__inference_sampling_1_layer_call_fn_447451y\ЂY
RЂO
MJ
# 
inputs/0џџџџџџџџџШ
# 
inputs/1џџџџџџџџџШ
Њ "џџџџџџџџџШФ
$__inference_signature_wrapper_446495,#$-./0=>GHIJWXabcdqr{|}~ЋЌГДOЂL
Ђ 
EЊB
@
encoder_input/,
encoder_inputџџџџџџџџџ@@"Њ
3

sampling_1%"

sampling_1џџџџџџџџџШ
1
	z_log_var$!
	z_log_varџџџџџџџџџШ
+
z_mean!
z_meanџџџџџџџџџШЉ
E__inference_z_log_var_layer_call_and_return_conditional_losses_447445`ГД0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџШ
 
*__inference_z_log_var_layer_call_fn_447435SГД0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџШІ
B__inference_z_mean_layer_call_and_return_conditional_losses_447426`ЋЌ0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџШ
 ~
'__inference_z_mean_layer_call_fn_447416SЋЌ0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџШ