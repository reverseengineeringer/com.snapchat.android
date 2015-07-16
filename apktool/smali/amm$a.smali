.class public Lamm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p3, p0, Lamm$a;->b:J

    .line 30
    iput-wide p1, p0, Lamm$a;->a:J

    .line 31
    iput p5, p0, Lamm$a;->c:I

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    const-class v0, Lamm$a;

    invoke-static {v0}, Lcl;->a(Ljava/lang/Class;)Lcl$a;

    move-result-object v0

    const-string v1, "durationMs"

    iget-wide v2, p0, Lamm$a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcl$a;->a(Ljava/lang/String;J)Lcl$a;

    move-result-object v0

    const-string v1, "bytesReceived"

    iget-wide v2, p0, Lamm$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcl$a;->a(Ljava/lang/String;J)Lcl$a;

    move-result-object v0

    const-string v1, "downloadCount"

    iget v2, p0, Lamm$a;->c:I

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;I)Lcl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
