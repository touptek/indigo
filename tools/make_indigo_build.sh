echo "// DO NOT EDIT - generated by indigo_libs/Makefile\n"
echo "#include <indigo/indigo_config.h>\n"
if ! test -d ../.git;
then echo "char *indigo_build_commit = \"production\";";
else if git diff --quiet >/dev/null;
then echo "char *indigo_build_commit = \"`git rev-parse --short HEAD`\";";
else echo "char *indigo_build_commit = \"`git rev-parse --short HEAD`+\";";
fi;
fi
echo "char *indigo_build_time = \"`date -Iseconds`\";"
