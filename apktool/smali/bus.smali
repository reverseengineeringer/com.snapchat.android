.class public final Lbus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbus$a;
    }
.end annotation


# instance fields
.field a:Ljava/net/InetAddress;

.field b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Lbus$a;

.field e:I

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "/"

    iput-object v0, p0, Lbus;->c:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lbus;->d:Lbus$a;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lbus;->e:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbus;->f:Z

    return-void
.end method
