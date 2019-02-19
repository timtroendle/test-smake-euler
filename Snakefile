localrules: all


rule all:
    message: "Run everything."
    input: "build/a.file"


rule a_rule:
    message: "Touch a file."
    output:
        "build/a.file"
    shell:
        """
        touch {output}
        """


rule clean: # removes all generated results
    shell:
        """
        rm -r ./build/*
        echo "Data downloaded to data/ has not been cleaned."
        """

