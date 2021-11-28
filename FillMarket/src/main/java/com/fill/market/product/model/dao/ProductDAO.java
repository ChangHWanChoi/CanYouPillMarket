package com.fill.market.product.model.dao;

import java.util.List;
import java.util.Map;

import com.fill.market.admin.model.vo.PAttachment;
import com.fill.market.admin.model.vo.Product;
import com.fill.market.review.model.vo.RAttachment;
import com.fill.market.review.model.vo.Review;

public interface ProductDAO {

	List<Map<String, String>> selectProductList(int cPage, int numPerPage, int cno);

	int selectProductTotalContents(int cno);

	Product selectOneProduct(int pNo);

	List<PAttachment> selectPAttachmentList(int pNo);

	Review selectOneReview(int pno);
	
	RAttachment selectRAttachment(int reno);

	List<Review> selectReviewList(int pno);

	Product Selectproduct(String pList);
	
}
