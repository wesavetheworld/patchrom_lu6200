.class Lcom/android/settings_ex/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)V

    return-void
.end method
