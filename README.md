# WaterFallsFlowLayout
collectionview  water falls flow layout


 [!]


# USE IT 


          let layout = HCFallsFlowLayout.init()

          //... 设置UIEdgeinset 行间距 列间距 可以自己定义
          //layout.interitemSpacing
          //layout.edgeInset
          //layout.lineSpacing
          layout.basicSetting()
          
          //设置几列 默认是2列
          layout.columCount = 3

          layout.delegate = self

          self.collectionView = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: layout)
          
          //返回每行的行高
          extension HomeViewController: WaterflowLayoutDelegate{
            func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath) -> CGFloat {
                return CGFloat.random(in: 100...500)
            }    
        }
