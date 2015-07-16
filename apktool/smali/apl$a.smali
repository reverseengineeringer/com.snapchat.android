.class public final Lapl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapl;
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

.field public e:Lhu;

.field public f:Lmj;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:J


# direct methods
.method protected constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v2, p0, Lapl$a;->a:Z

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lapl$a;->b:Ljava/lang/Long;

    .line 77
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lapl$a;->c:Ljava/lang/Long;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapl$a;->d:D

    .line 80
    iput-object v3, p0, Lapl$a;->f:Lmj;

    .line 81
    iput-object v3, p0, Lapl$a;->g:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lapl$a;->h:Z

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lapl$a;->i:J

    return-void
.end method
