import sys
def main():
	for i,arg in enumerate(sys.argv[1:]):
		if (arg == "-s"):
			print("The server is " + sys.argv[i+2])

if __name__ == "__main__":
	main()