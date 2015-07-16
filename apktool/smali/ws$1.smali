.class final Lws$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwy$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwh;

.field final synthetic b:Lwi;

.field final synthetic c:Lwr;

.field final synthetic d:Lws;


# direct methods
.method constructor <init>(Lws;Lwh;Lwi;Lwr;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lws$1;->d:Lws;

    iput-object p2, p0, Lws$1;->a:Lwh;

    iput-object p3, p0, Lws$1;->b:Lwi;

    iput-object p4, p0, Lws$1;->c:Lwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lws$1;->a:Lwh;

    iget-object v1, p0, Lws$1;->d:Lws;

    iget-object v1, v1, Lws;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    iget-object v2, p0, Lws$1;->b:Lwi;

    invoke-interface {v0, v1, v2}, Lwh;->a(Lavc;Lwi;)V

    .line 72
    iget-object v0, p0, Lws$1;->c:Lwr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lwr;->b(Z)V

    .line 73
    return-void
.end method
