.class Lcom/lge/camera/CamcorderLoading$2;
.super Ljava/lang/Object;
.source "CamcorderLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CamcorderLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamcorderLoading;


# direct methods
.method constructor <init>(Lcom/lge/camera/CamcorderLoading;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/CamcorderLoading$2;->this$0:Lcom/lge/camera/CamcorderLoading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lge/camera/CamcorderLoading$2;->this$0:Lcom/lge/camera/CamcorderLoading;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderLoading;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 40
    :cond_0
    return-void
.end method