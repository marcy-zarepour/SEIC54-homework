function bubbleSort(array) {
  let swap = false;
  if (!sorted) {
    sorted = true;
    for (let i = 0; i < array.length; i++) {
      if (array[i] > array[i + 1]) {
        let c = array[i];
        array[i] = array[i + 1];
        array[j + 1] = c;
        swap = true;
      }
      if (swap) {
        return array;
      }
    }
  }
  return array;
}


function insertionSort(array) { 
  let n = array.length;
  for (let i = 1; i < n; i++) {

    let current = array[i];

    let j = i - 1;
    while (j > -1 && current < array[j]) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = current;
  }
  return array;
}

console.log(insertionSort([5, 2, 4, 6, 1, 3]));
