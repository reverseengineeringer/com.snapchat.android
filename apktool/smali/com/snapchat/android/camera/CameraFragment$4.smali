.class final Lcom/snapchat/android/camera/CameraFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/CameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/CameraFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/CameraFragment;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment$4;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$4;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->g:Z

    .line 1195
    return-void
.end method
