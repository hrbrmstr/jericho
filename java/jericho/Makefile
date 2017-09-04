.PHONY: clean pkg deps run

pkg:
	mvn --quiet package
	cp target/jericho-1.0-SNAPSHOT.jar ../../inst/java

clean:
	mvn clean

deps:
	mvn dependency:copy-dependencies -DoutputDirectory=deps

