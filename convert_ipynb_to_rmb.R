library("rmarkdown")

# Generate Paths
spt_file_root <- '/home/digdata/Documents/code-all/coursera-courses/curso-r-data-analisis/r-course-google/'
spt_file_name <- 'new_r_colab'
spt_file_full_ipynb <- paste0(spt_file_root, spt_file_name, '.ipynb')
spt_file_full_rmd <- paste0(spt_file_root, spt_file_name, '.rmd')

# Convert from IPYNB to RMD
file_nb_rmd <- rmarkdown:::convert_ipynb(spt_file_full_ipynb)
st_nb_rmd <- xfun::file_string(file_nb_rmd)

# Save RMD
fileConn <- file(spt_file_full_rmd)
writeLines(st_nb_rmd, fileConn)
close(fileConn)

# Convert to PDF and HTML
# rmarkdown::render(spt_file_full_rmd, "pdf_document")
# rmarkdown::render(spt_file_full_rmd, "html_document")