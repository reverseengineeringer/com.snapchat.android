.class final Lcom/snapchat/android/ui/CustomVolumeView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CustomVolumeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CustomVolumeView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CustomVolumeView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/snapchat/android/ui/CustomVolumeView$2;->a:Lcom/snapchat/android/ui/CustomVolumeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView$2;->a:Lcom/snapchat/android/ui/CustomVolumeView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CustomVolumeView;->a(Lcom/snapchat/android/ui/CustomVolumeView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 97
    return-void
.end method
