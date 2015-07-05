.class public final Laop$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:D

.field public e:Lhl;

.field public f:Llr;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v2, p0, Laop$a;->a:Z

    .line 72
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Laop$a;->b:Ljava/lang/Long;

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Laop$a;->c:Ljava/lang/Long;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laop$a;->d:D

    .line 76
    iput-object v3, p0, Laop$a;->f:Llr;

    .line 77
    iput-object v3, p0, Laop$a;->g:Ljava/lang/String;

    .line 78
    iput-boolean v2, p0, Laop$a;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Laop$a;-><init>()V

    return-void
.end method
