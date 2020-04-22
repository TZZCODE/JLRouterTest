//
//  Header.h
//  JLRouterDemo
//
//  Created by tz on 2020/4/22.
//  Copyright © 2020 Coder. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenWidth  [UIScreen mainScreen].bounds.size.width

//
#define kStatusBarHeight ((kScreenHeight>=812.f) ? 44.f : 20.f)
// 导航栏高度
#define kNavBarHeight 44.0
//TableView正常开始的位置
#define kTopHeight (kStatusBarHeight + kNavBarHeight)

// ScenesA
#define TZ_SCENESA @"/BusinessLine/ScenesA/TZViewControllerA"
// ScenesB
#define TZ_SCENESB @"/BusinessLine/ScenesB/TZViewControllerB"

#endif /* Header_h */
