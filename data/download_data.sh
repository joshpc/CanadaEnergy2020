#!/bin/sh

#
# download_file(file, url)
# Both file (where to place) and url (where to download) are required
#
download_file()
{
  if [ ! -e "$1" ]
  then
    echo "downloading $1 from $2"
    wget -O "$1" "$2" --no-check-certificate
  else
    echo "using cached version of $1"
  fi
}

# Butane Data
download_file "cer-butanes-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/butanes-2020.csv"

# Coal
download_file "cer-coal-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/coal-2020.csv"

# Crude Oil
download_file "cer-crude-oil-production-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/crude-oil-production-2020.csv"
download_file "cer-crude-oil-exports-by_type-annual.csv" "https://www.cer-rec.gc.ca/open/imports-exports/crude-oil-exports-by-type-annual.csv"

# Electricity Generation
download_file "cer-electricity-generation-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/electricity-generation-2020.csv"
download_file "cer-electricity-interchange-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/electricity-interchange-2020.csv"

# Ethane
download_file "cer-ethane-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/ethane-2020.csv"

# Natural Gas Production
download_file "cer-natural-gas-production-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/natural-gas-production-2020.csv"
download_file "cer-natural-gas-exports-and-imports-annual.csv" "https://www.cer-rec.gc.ca/open/imports-exports/natural-gas-exports-and-imports-annual.csv"

# Pentanes
download_file "cer-pentanes-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/pentanes-2020.csv"

# Propane
download_file "cer-propane-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/propane-2020.csv"

# Overall Import/Export Data
# https://apps2.cer-rec.gc.ca/imports-exports/electricity?config=eyJ2aXN1YWxpemF0aW9uU2V0dGluZ3MiOnsiZWxlY3RyaWNpdHnED2Ftb3VudCI6Ik1XLmgiLCJhcnJhbmdlQnkiOiJsb2PFP8QXY3RpdsUzImltcG9ydHNFeMUHIiwic3VidHlwZSI6IsQNxWDENTp7ImPEXHJ5IjpudWxsLCJvcmlnaW5zIjpbXSwiY29udGluZW50xxBkZXN0aW7FcOQAqH0sInByb3ZpbmNlxyHGbzpbXX0sInRpbWVsaW5lxGVzY2FsZUxpbmtlZCI6dHJ1ZSwiZ3JvdXBpbmciOiJ5ZWFyIiwi5QDVxS50YXJ0xAnFGToxOTkwLCJxdWFydGXED30sImVuZMogMjAyzCA0fcQBLOcBBOYBA1bsAWoiOu0BYSwibGFuZ3VhxHwiZeQBSXNob3dFeHBsYekA6%2BYAs29wZW7OGFvMSlRpdGxlyyAiLCJjcnVkZU9pbEnmAZDbIucBq9MibmF0dXJhbEdh3h1MaXF1aWTUJHJlZmluZWRQZXRyb2xldW1Qcm9kdWPTbOYB8mZpZGVudGlhbGl0eU1lbnXsAP5Dzh%2FlAeo%3D
download_file "CER_imports_exports_data.csv" "https://apps2.cer-rec.gc.ca/imports-exports/data/CER_imports_exports_data.csv"

# https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=2510006301&pickMembers%5B0%5D=1.1&cubeTimeFrame.startMonth=10&cubeTimeFrame.startYear=2016&cubeTimeFrame.endMonth=02&cubeTimeFrame.endYear=2021&referencePeriods=20161001%2C20210201

# Statistics Canada. Table 25-10-0063-01  Supply and disposition of crude oil and equivalent
# DOI: https://doi.org/10.25318/2510006301-eng
# "https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=2510006301&pickMembers%5B0%5D=1.1&cubeTimeFrame.startMonth=10&cubeTimeFrame.startYear=2016&cubeTimeFrame.endMonth=02&cubeTimeFrame.endYear=2021&referencePeriods=20161001%2C20210201"
download_file "statscan_supply_and_dispo_crude_oil_and_equiv.csv" "https://www150.statcan.gc.ca/t1/tbl1/en/dtl!downloadDbLoadingData-nonTraduit.action?pid=2510006301&latestN=0&startDate=20161001&endDate=20210201&csvLocale=en&selectedMembers=%5B%5B1%5D%2C%5B2%2C11%2C14%2C24%5D%2C%5B1%2C2%5D%5D"


# Primary Demand
download_file "cer-primary-energy-demand-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/primary-energy-demand-2020.csv"

# End Use Demand
download_file "cer-end-use-demand-2020.csv" "https://www.cer-rec.gc.ca/open/energy/energyfutures2020/end-use-demand-2020.csv"

# TODO: Secondary Energy Use Database
# https://oee.nrcan.gc.ca/corporate/statistics/neud/dpa/data_e/databases.cfm?attr=0


# Electric power generation, monthly generation by type of electricity
# https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=2510001501&pickMembers%5B0%5D=1.1&pickMembers%5B1%5D=2.1&cubeTimeFrame.startMonth=01&cubeTimeFrame.startYear=2020&cubeTimeFrame.endMonth=12&cubeTimeFrame.endYear=2020&referencePeriods=20200101%2C20201201
download_file "statscan-electric-power-generation-2020.csv" "https://www150.statcan.gc.ca/t1/tbl1/en/dtl!downloadDbLoadingData-nonTraduit.action?pid=2510001501&latestN=0&startDate=20200101&endDate=20201201&csvLocale=en&selectedMembers=%5B%5B1%5D%2C%5B1%5D%2C%5B1%2C2%2C3%2C4%2C5%2C6%2C7%2C8%2C9%2C10%2C11%5D%5D"

