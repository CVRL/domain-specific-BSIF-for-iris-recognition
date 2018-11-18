# Domain-Specific Human-InspiredBinarized Statistical Image Features for Iris Recognition

Binarized statistical image features (BSIF) have been successfully used for texture analysis in many computer vision tasks, including iris recognition and biometric presentation attack detection. One important point is that all applications of BSIF in iris recognition have used the original BSIF filters, which were trained on image patches extracted from natural images. This paper tests the question of whether domain-specific BSIF can give better performance than the default BSIF. The second important point is in the selection of image patches to use in training for BSIF. Can image patches derived from eye-tracking experiments, in which humans perform an iris recognition task, give better performance than random patches? Our results say that (1) domain-specific BSIF features can out-perform the default BSIF features, and (2) selecting image patches in a task-specific manner guided by human performance can out-perform selecting random patches. These results are important because BSIF is often regarded as a generic texture tool that does not need any domain adaptation, and human-task-guided selection of patches for training has never (to our knowledge) been done. This paper follows the reproducible research requirements, and the new iris-domain-specific BSIF filters, the patches used in filter training, the database used in testing and the source codes of the designed iris recognition method are made available along with this paper to facilitate applications of this concept.

# Usage 

The example code `example.m` shows how to use the re-trained BSIF filters in iris recognition.

# Reference

Adam Czajka, Daniel Moreira, Kevin W. Bowyer, Patrick J. Flynn, "Domain-Specific Human-Inspired Binarized Statistical Image Features for Iris Recognition," WACV 2019, Hawaii, 2019
