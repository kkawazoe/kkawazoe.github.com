/**
 * code 要素にファイル名などを付与する
 **/
const codes = document.querySelectorAll('code');

if(codes) {
  Array.prototype.slice.call(codes).forEach((item) => {
    // クラスを取得
    const classes = item.classList;

    if(classes.length > 0) {

      // ファイル名があればdata属性にセット
      if(classes[0].indexOf(':')){
        const values = classes[0].split(':');
        const filename = values[1];

        if(filename) {
          item.setAttribute('data-filename', filename);
        }

        // ファイル名を削除して言語クラスに変更する
        item.classList.remove(classes[0]);
        item.classList.add(values[0]);
      }
    }
  });
}
