.class public Lcom/android/settings_ex/CustomImagePreference2;
.super Landroid/preference/Preference;
.source "CustomImagePreference2.java"


# instance fields
.field IsRIdImage:Z

.field RIdImage:I

.field mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/CustomImagePreference2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/CustomImagePreference2;->IsRIdImage:Z

    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CustomImagePreference2;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    const v0, 0x7f0b0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/CustomImagePreference2;->mImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings_ex/CustomImagePreference2;->IsRIdImage:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/CustomImagePreference2;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/CustomImagePreference2;->RIdImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setImage(I)V
    .locals 1
    .parameter "Setimage"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/CustomImagePreference2;->RIdImage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/CustomImagePreference2;->IsRIdImage:Z

    return-void
.end method
