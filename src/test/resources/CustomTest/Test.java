public class Test {

    public Test() { }

    public static void bubbleSort(int[] arr) {
        int n = arr.length;
        boolean swapped = false;
        for (int i = 0; i < n - 1; i = i + 1) {
            swapped = false;
            for (int j = 0; j < n - i - 1; j = 1 + j) {
                if (arr[j] > arr[j + 1]) {
                    // swap arr[j] and arr[j+1]
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                    swapped = true;
                }
            }
            // If no two elements were swapped by inner loop, then break
            if (!swapped) {
                return;
            }
        }
    }

    public static int test() {
        int[] a = new int[7];
        a[0] = 64; a[1] = 34; a[2] = 25; a[3] = 12; a[4] = 22; a[5] = 11; a[6] = 100;
        Test.bubbleSort(a);
        return a[6] + a[1] + a[0];
    }
}