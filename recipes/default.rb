#
# Cookbook:: edgeR
# Recipe:: default
#
# Copyright:: 2019, Eagle Genomics Ltd, All Rights Reserved.

include_recipe 'R'

execute 'Rscript -e \'BiocManager::install("edgeR")\''
