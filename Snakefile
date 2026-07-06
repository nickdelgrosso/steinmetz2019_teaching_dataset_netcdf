rule all:
    input:
        "references/steinmetz2019.pdf",
        "vids/eyetracking_example_steinmetz2019_sciebo-3sDmbQKgDYbDXrJ.avi",
        "vids/mouse_wheel_example_steinmetz2019_sciebo-3sDmbQKgDYbDXrJ.avi",
        directory("data/raw"),
        directory("data/processed"),
        directory("data/final"),


rule download_nature_paper:
    """
    Nature Paper: https://www.nature.com/articles/s41586-019-1787-x
    """
    output:
        filename = 'references/steinmetz2019.pdf'
    params:
        url = 'https://www.nature.com/articles/s41586-019-1787-x.pdf'
    run:        
        import urllib.request
        urllib.request.urlretrieve(params.url, output.filename);


rule download_sciebo_file:
    output:
        file = "{path}/{name}_sciebo-{sciebo_token}.{ext}"
    run:
        import owncloud
        oc = owncloud.Client.from_public_link(
            f'https://uni-bonn.sciebo.de/s/{wildcards.sciebo_token}',
        )
        oc.get_file(f'/{wildcards.name}.{wildcards.ext}', output.file)
        


rule download_data:
    output: 
        directory("data/raw")
    script: 
        "scripts/1_download_data.py"


rule convert_raw_to_netcdf:
    input:
        directory("data/raw")
    output:
        directory("data/processed")
    script:
        "scripts/2_convert_to_netcdf.py"


rule extract_to_csv:
    input:
        directory("data/processed")
    output:
        directory("data/final")
    script:
        "scripts/3_extract_and_merge_trials.py"