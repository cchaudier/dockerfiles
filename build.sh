maintainer=cchaudier

build() {
	name=$1
	cd $name
	docker build -t $maintainer/$name .	
	cd ..
}

reps=$(find [0-9a-zA-Z]* -type d)
for rep in $reps;do
	build $rep
done

echo "All images are up to date"
