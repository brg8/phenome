The phenome gem is for downloading phenome datasets.

Right now, you can download mouse phenome datasets from http://phenome.jax.org/.

# Example usage:  

First you would go to http://phenome.jax.org/ and select the samples to download.
Go through the process of creating a csv file, and then copy the url of the csv file.
Paste the url of the csv file in the code below:

```
require "phenome"

jax = Phenome::JAX.new
jax_csv_location = "http://phenome.jax.org/tmp/mpd_snps_e2rijjNU0.csv" # this is the url of your csv file in phenome.jax.org
my_csv_destination = "/Users/benjamingodlove/Desktop/thisphenome.csv" # this is the destination on your computer that you want to csv file to save to

jax.download_csv(jax_csv_location, my_csv_destination)
```
