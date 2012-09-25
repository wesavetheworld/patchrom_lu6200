.class public Lcom/android/settings_ex/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLineWidth:I

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LinearColorBar;->setWillNotDraw(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLineWidth:I

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    return-void

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 72
    .local v8, off:I
    if-gez v8, :cond_0

    const/4 v8, 0x0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v9, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    const v5, 0x888888

    const v6, -0x777778

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 82
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 84
    return-void

    .line 79
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    const v5, 0x99cc

    const v6, -0xff6634

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 94
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getWidth()I

    move-result v17

    .line 98
    .local v17, width:I
    const/4 v10, 0x0

    .line 100
    .local v10, left:I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRedRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v14, v10, v1

    .line 101
    .local v14, right:I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v15, v14, v1

    .line 102
    .local v15, right2:I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v15, v1

    .line 105
    .local v16, right3:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v1, :cond_7

    .line 106
    move v8, v15

    .line 107
    .local v8, indicatorLeft:I
    move/from16 v9, v16

    .line 113
    .local v9, indicatorRight:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastInterestingLeft:I

    if-ne v1, v8, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastInterestingRight:I

    if-eq v1, v9, :cond_2

    .line 114
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 116
    if-ge v8, v9, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->top:I

    .line 118
    .local v13, midTopY:I
    const/4 v12, 0x0

    .line 119
    .local v12, midBottomY:I
    const/16 v18, 0x2

    .line 120
    .local v18, xoff:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    int-to-float v5, v13

    const/high16 v6, -0x4000

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v13

    int-to-float v4, v9

    const/4 v5, 0x0

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 129
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mLineWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    add-float v11, v1, v2

    .line 130
    .local v11, lineOffset:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x4000

    add-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x4000

    add-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v8

    add-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v8

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v9

    sub-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v9

    sub-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 139
    .end local v11           #lineOffset:F
    .end local v12           #midBottomY:I
    .end local v13           #midTopY:I
    .end local v18           #xoff:I
    :cond_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastInterestingLeft:I

    .line 140
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastInterestingRight:I

    .line 143
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    :cond_3
    if-ge v10, v14, :cond_4

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff6634

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    sub-int v1, v14, v10

    sub-int v17, v17, v1

    .line 154
    move v10, v14

    .line 157
    :cond_4
    move v14, v15

    .line 159
    if-ge v10, v14, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff6634

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 164
    sub-int v1, v14, v10

    sub-int v17, v17, v1

    .line 165
    move v10, v14

    .line 169
    :cond_5
    add-int v14, v10, v17

    .line 170
    if-ge v10, v14, :cond_6

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 176
    :cond_6
    return-void

    .line 109
    .end local v8           #indicatorLeft:I
    .end local v9           #indicatorRight:I
    :cond_7
    move v8, v14

    .line 110
    .restart local v8       #indicatorLeft:I
    move v9, v15

    .restart local v9       #indicatorRight:I
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->updateIndicator()V

    .line 90
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .parameter "red"
    .parameter "yellow"
    .parameter "green"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRedRatio:F

    .line 57
    iput p2, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mYellowRatio:F

    .line 58
    iput p3, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mGreenRatio:F

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->invalidate()V

    .line 60
    return-void
.end method

.method public setShowingGreen(Z)V
    .locals 1
    .parameter "showingGreen"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_0

    .line 64
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mShowingGreen:Z

    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->updateIndicator()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->invalidate()V

    .line 68
    :cond_0
    return-void
.end method