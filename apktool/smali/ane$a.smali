.class public final Lane$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lty;
.end annotation


# instance fields
.field a:Lul;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field b:Lul;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_token"
    .end annotation
.end field

.field c:Lul;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field d:Lti;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field final synthetic e:Lane;


# direct methods
.method constructor <init>(Lane;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 72
    iput-object p1, p0, Lane$a;->e:Lane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lul;

    invoke-direct {v0, p2}, Lul;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lane$a;->a:Lul;

    .line 74
    new-instance v0, Lul;

    invoke-static {p2}, Los;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lul;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lane$a;->b:Lul;

    .line 75
    new-instance v0, Lul;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lul;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lane$a;->c:Lul;

    .line 76
    new-instance v0, Lti;

    invoke-direct {v0, p3}, Lti;-><init>([B)V

    iput-object v0, p0, Lane$a;->d:Lti;

    .line 77
    return-void
.end method
