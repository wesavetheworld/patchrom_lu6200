.class Lcom/android/internal/telephony/LGE_MMS_HiddenConfig$1;
.super Landroid/database/ContentObserver;
.source "LGE_MMS_HiddenConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig$1;->this$0:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig$1;->this$0:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->loadHiddenPrefSettings()V

    .line 27
    const-string v0, "MmsHiddenPrefProvider"

    const-string v1, "MmsHiddenConfig value updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
