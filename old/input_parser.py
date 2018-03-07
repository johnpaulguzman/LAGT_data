import csv
import os
import sys


def read_input(filename):
    print("Reading input file: {}".format(filename))
    with open(filename, newline='') as input_file:  
        preprocessed_data = csv.reader(input_file)
        (headers, *rows) = preprocessed_data
        return (headers, rows)

def parse_row(row, threshold):
    below_threshold = 'notKnown'
    above_threshold = 'Known'
    missing_data = '-'
    parsed_row = []
    for entry in row:
        if is_non_numeric(entry): parsed_row += [entry]
        elif float(entry) >= threshold: parsed_row += [above_threshold]
        else: parsed_row += [below_threshold]
    return parsed_row

def is_non_numeric(value):
    try:
        float(value)
        return False
    except ValueError:
        return True

def discretize(rows, threshold):
    print("Discretizing rows with threshold: {}".format(threshold))
    discrete_rows = []
    for row in rows:
        discrete_rows += [parse_row(row, threshold)]
    return discrete_rows

def write_output(filename, headers, rows, output_directory='preprocessed'):
    os.makedirs(output_directory, exist_ok=True)
    output_filename = os.path.join(output_directory, filename)
    print("Writing output file: {}".format(output_filename))
    with open(output_filename, 'w', newline='') as output_file:
        writer = csv.writer(output_file)
        writer.writerow(headers)
        writer.writerows(rows)


if __name__ == '__main__':
    print("Usage: python input_parser.py <filename> <score_threshold>")
    default_filename = 'dataset.csv'
    default_threshold = 60

    filename = sys.argv[1] if len(sys.argv) > 1 else \
               default_filename
    threshold = int(sys.argv[2]) if len(sys.argv) > 2 else \
                default_threshold

    (headers, rows) = read_input(filename)
    processed_rows = discretize(rows, threshold=threshold)
    write_output(filename, headers, processed_rows)
    #import code; code.interact(local=dict(locals(), **globals()))
