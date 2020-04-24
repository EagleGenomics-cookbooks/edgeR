#
# Cookbook:: edgeR
# Recipe:: default
#
# Copyright:: 2019, Eagle Genomics Ltd, All Rights Reserved.

include_recipe 'R'

execute 'Rscript -e \'BiocManager::install(version = "3.10", ask=FALSE)\''
execute 'Rscript -e \'BiocManager::install("edgeR")\''

# Bioconductor version 3.10 is linked to edgeR version 3.28.1
# N.B. We cannot control the Bioconductor package versions - they are linked to the Bioconductor version
magic_shell_environment 'EDGER_VERSION' do
  value '3.28.1'
end
