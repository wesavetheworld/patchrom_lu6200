.class Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    goto :goto_0

    .line 352
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
