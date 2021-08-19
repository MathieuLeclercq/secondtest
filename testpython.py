import itk
import argparse



def ReadImage():
    
    parser = argparse.ArgumentParser(description="Read An Image.")
    parser.add_argument("input_image")
    args = parser.parse_args()

    image = itk.imread(args.input_image)


ReadImage()
