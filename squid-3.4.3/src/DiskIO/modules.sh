#!/bin/sh
echo "/* automatically generated by $0 $*"
echo " * do not edit"
echo " */"
echo "#include \"squid.h\""
echo "#include \"DiskIO/DiskIOModule.h\""
for module in "$@"; do
   echo "#include \"DiskIO/${module}/${module}DiskIOModule.h\""
done
echo ""
echo "void DiskIOModule::PokeAllModules(void)"
echo "{"
for module in "$@"; do
   echo "    ${module}DiskIOModule::GetInstance();"
done
echo "}"