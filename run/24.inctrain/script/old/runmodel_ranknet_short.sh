if [ $# -lt 4 ]; then
	echo "usage runmodel_xxx.sh <gpuid> <suffix> <testevent> [trainrace] [predictionlen] [contextlen]"
	exit 0
fi

gpuid=$1
suffix=$2
testevent=$3
shift
shift
shift
allargs="$@"

script/run_model.sh S0LTYP0T shortterm oracle deepARW-Oracle deepARW-Oracle $testevent 2 $gpuid $suffix $allargs
script/run_model.sh S0LTYP0T shortterm pitmodel deepARW-Oracle deepARW-MLP $testevent 100 $gpuid $suffix $allargs
#script/run_model.sh S0LTYP0T stint oracle deepARW-Oracle deepARW-Oracle $testevent 2 $gpuid $suffix $allargs
#script/run_model.sh S0LTYP0T stint pitmodel deepARW-Oracle deepARW-MLP $testevent 100 $gpuid $suffix $allargs