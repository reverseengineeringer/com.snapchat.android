.class final Lvw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvl;

.field final synthetic b:Lvm;

.field final synthetic c:Lvv;

.field final synthetic d:Lvw;


# direct methods
.method constructor <init>(Lvw;Lvl;Lvm;Lvv;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lvw$2;->d:Lvw;

    iput-object p2, p0, Lvw$2;->a:Lvl;

    iput-object p3, p0, Lvw$2;->b:Lvm;

    iput-object p4, p0, Lvw$2;->c:Lvv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lvw$2;->a:Lvl;

    iget-object v1, p0, Lvw$2;->d:Lvw;

    iget-object v1, v1, Lvw;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->f:Laue;

    iget-object v2, p0, Lvw$2;->b:Lvm;

    invoke-interface {v0, v1, v2}, Lvl;->a(Laue;Lvm;)V

    .line 85
    iget-object v0, p0, Lvw$2;->c:Lvv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvv;->a(Z)V

    .line 86
    return-void
.end method
