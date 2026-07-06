rule all:
    input:
        'references/steinmetz2019.pdf'


rule download_nature_paper:
    output:
        filename = 'references/steinmetz2019.pdf'
    params:
        url = 'https://www.nature.com/articles/s41586-019-1787-x.pdf'
    run:        
        import urllib.request
        urllib.request.urlretrieve(params.url, output.filename);



