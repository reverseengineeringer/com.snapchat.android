.class public final Laob$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Luo;
.end annotation


# instance fields
.field a:Lvc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field b:Lvc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_token"
    .end annotation
.end field

.field c:Lvc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field d:Lty;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field final synthetic e:Laob;


# direct methods
.method constructor <init>(Laob;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 72
    iput-object p1, p0, Laob$a;->e:Laob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lvc;

    invoke-direct {v0, p2}, Lvc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laob$a;->a:Lvc;

    .line 74
    new-instance v0, Lvc;

    invoke-static {p2}, Lpj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laob$a;->b:Lvc;

    .line 75
    new-instance v0, Lvc;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laob$a;->c:Lvc;

    .line 76
    new-instance v0, Lty;

    invoke-direct {v0, p3}, Lty;-><init>([B)V

    iput-object v0, p0, Laob$a;->d:Lty;

    .line 77
    return-void
.end method
