(set-logic HORN)
(set-info :source |
Author: Frank Schuessele <schuessf@informatik.uni-freiburg.de>
Date: 2022-02-28
Generated from a simplified version of SV-COMP example pthread-ext/31_simple_loop5_vs.c using Ultimate
|)

(declare-fun Inv (Int Int Int Int Int Int Int Int Int Int) Bool)

(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int)) (=> (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (Inv a m c b temp loc_thread1_2 loc_thread1_1 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int)) (=> (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_2 loc_thread2_1 loc_main_1))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int)) (Inv a m c b temp (- 1) (- 1) (- 1) (- 1) 0)))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int)) (not (Inv a m c b temp 0 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m_10 Int) (c Int) (b Int) (temp Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (m_9 Int)) (=> (Inv a m_10 c b temp 1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (and (= m_9 1) (= m_10 0)) (Inv a m_9 c b temp 3 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a_1 Int) (m Int) (c Int) (b_1 Int) (temp Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int)) (=> (Inv a_1 m c b_1 temp 3 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (= a_1 b_1) (Inv a_1 m c b_1 temp 0 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a_2 Int) (m Int) (c Int) (b_2 Int) (temp Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int)) (=> (Inv a_2 m c b_2 temp 3 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (not (= a_2 b_2)) (Inv a_2 m c b_2 temp 4 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m_14 Int) (c Int) (b Int) (temp Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (m_13 Int)) (=> (Inv a m_14 c b temp 4 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (and (= m_13 0) (= m_14 1)) (Inv a m_13 c b temp 1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m_22 Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_2 Int) (loc_main_1 Int) (m_21 Int)) (=> (Inv a m_22 c b temp loc_thread1_1 loc_thread1_2 0 loc_thread2_2 loc_main_1) (and (= m_21 1) (= m_22 0)) (Inv a m_21 c b temp loc_thread1_1 loc_thread1_2 2 loc_thread2_2 loc_main_1))))
(assert (forall ((a_4 Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_2 Int) (loc_main_1 Int) (temp_2 Int)) (=> (Inv a_4 m c b temp loc_thread1_1 loc_thread1_2 2 loc_thread2_2 loc_main_1) (= a_4 temp_2) (Inv a_4 m c b temp_2 loc_thread1_1 loc_thread1_2 3 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m Int) (c Int) (b_3 Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_2 Int) (loc_main_1 Int) (a_3 Int)) (=> (Inv a m c b_3 temp loc_thread1_1 loc_thread1_2 3 loc_thread2_2 loc_main_1) (= a_3 b_3) (Inv a_3 m c b_3 temp loc_thread1_1 loc_thread1_2 4 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m Int) (c_1 Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_2 Int) (loc_main_1 Int) (b_4 Int)) (=> (Inv a m c_1 b temp loc_thread1_1 loc_thread1_2 4 loc_thread2_2 loc_main_1) (= c_1 b_4) (Inv a m c_1 b_4 temp loc_thread1_1 loc_thread1_2 5 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp_1 Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_2 Int) (loc_main_1 Int) (c_2 Int)) (=> (Inv a m c b temp_1 loc_thread1_1 loc_thread1_2 5 loc_thread2_2 loc_main_1) (= c_2 temp_1) (Inv a m c_2 b temp_1 loc_thread1_1 loc_thread1_2 6 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m_18 Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_2 Int) (loc_main_1 Int) (m_17 Int)) (=> (Inv a m_18 c b temp loc_thread1_1 loc_thread1_2 6 loc_thread2_2 loc_main_1) (and (= m_18 1) (= m_17 0)) (Inv a m_17 c b temp loc_thread1_1 loc_thread1_2 0 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (a_5 Int)) (=> (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 0) (= a_5 1) (Inv a_5 m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 1))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (b_5 Int)) (=> (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 1) (= 2 b_5) (Inv a m c b_5 temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 2))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (c_3 Int)) (=> (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 2) (= 3 c_3) (Inv a m c_3 b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 3))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int)) (=> (Inv a m c b temp (- 1) loc_thread1_2 loc_thread2_1 loc_thread2_2 3) (Inv a m c b temp 1 loc_thread1_2 loc_thread2_1 loc_thread2_2 4))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int)) (=> (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 3) (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 4))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_2 Int)) (=> (Inv a m c b temp loc_thread1_1 loc_thread1_2 (- 1) loc_thread2_2 4) (Inv a m c b temp loc_thread1_1 loc_thread1_2 0 loc_thread2_2 4))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int)) (let ((.cse0 (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 4))) (=> .cse0 .cse0))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int)) (=> (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 5) (Inv a m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 6))))
(assert (forall ((a Int) (m_10 Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (m_9 Int)) (=> (Inv a m_10 c b temp 1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (Inv a m_10 c b temp loc_thread1_1 1 loc_thread2_1 loc_thread2_2 loc_main_1) (Inv a m_10 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (and (= m_9 1) (= m_10 0)) (Inv a m_9 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a_1 Int) (m Int) (c Int) (b_1 Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int)) (let ((.cse0 (Inv a_1 m c b_1 temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))) (=> (Inv a_1 m c b_1 temp 3 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (Inv a_1 m c b_1 temp loc_thread1_1 3 loc_thread2_1 loc_thread2_2 loc_main_1) .cse0 (= a_1 b_1) .cse0))))
(assert (forall ((a_2 Int) (m Int) (c Int) (b_2 Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int)) (let ((.cse0 (Inv a_2 m c b_2 temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))) (=> (Inv a_2 m c b_2 temp 3 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (Inv a_2 m c b_2 temp loc_thread1_1 3 loc_thread2_1 loc_thread2_2 loc_main_1) .cse0 (not (= a_2 b_2)) .cse0))))
(assert (forall ((a Int) (m_14 Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (m_13 Int)) (=> (Inv a m_14 c b temp 4 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (Inv a m_14 c b temp loc_thread1_1 4 loc_thread2_1 loc_thread2_2 loc_main_1) (Inv a m_14 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (and (= m_13 0) (= m_14 1)) (Inv a m_13 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m_22 Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (m_21 Int)) (=> (Inv a m_22 c b temp loc_thread1_1 loc_thread1_2 0 loc_thread2_2 loc_main_1) (Inv a m_22 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 0 loc_main_1) (Inv a m_22 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (and (= m_21 1) (= m_22 0)) (Inv a m_21 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a_4 Int) (m Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (temp_2 Int)) (=> (Inv a_4 m c b temp loc_thread1_1 loc_thread1_2 2 loc_thread2_2 loc_main_1) (Inv a_4 m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 2 loc_main_1) (Inv a_4 m c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (= a_4 temp_2) (Inv a_4 m c b temp_2 loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m Int) (c Int) (b_3 Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (a_3 Int)) (=> (Inv a m c b_3 temp loc_thread1_1 loc_thread1_2 3 loc_thread2_2 loc_main_1) (Inv a m c b_3 temp loc_thread1_1 loc_thread1_2 loc_thread2_1 3 loc_main_1) (Inv a m c b_3 temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (= a_3 b_3) (Inv a_3 m c b_3 temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m Int) (c_1 Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (b_4 Int)) (=> (Inv a m c_1 b temp loc_thread1_1 loc_thread1_2 4 loc_thread2_2 loc_main_1) (Inv a m c_1 b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 4 loc_main_1) (Inv a m c_1 b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (= c_1 b_4) (Inv a m c_1 b_4 temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m Int) (c Int) (b Int) (temp_1 Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (c_2 Int)) (=> (Inv a m c b temp_1 loc_thread1_1 loc_thread1_2 5 loc_thread2_2 loc_main_1) (Inv a m c b temp_1 loc_thread1_1 loc_thread1_2 loc_thread2_1 5 loc_main_1) (Inv a m c b temp_1 loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (= c_2 temp_1) (Inv a m c_2 b temp_1 loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))
(assert (forall ((a Int) (m_18 Int) (c Int) (b Int) (temp Int) (loc_thread1_1 Int) (loc_thread1_2 Int) (loc_thread2_1 Int) (loc_thread2_2 Int) (loc_main_1 Int) (m_17 Int)) (=> (Inv a m_18 c b temp loc_thread1_1 loc_thread1_2 6 loc_thread2_2 loc_main_1) (Inv a m_18 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 6 loc_main_1) (Inv a m_18 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1) (and (= m_18 1) (= m_17 0)) (Inv a m_17 c b temp loc_thread1_1 loc_thread1_2 loc_thread2_1 loc_thread2_2 loc_main_1))))

(check-sat)
