csv_file=$(ls *.csv | head -n 1) && \
(head -n 1 "$csv_file" && tail -n +2 "$csv_file" | head -n 10000) > sample.csv