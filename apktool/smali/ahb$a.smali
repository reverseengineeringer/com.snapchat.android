.class public final Lahb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field final synthetic c:Lahb;


# direct methods
.method public constructor <init>(Lahb;JJ)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lahb$a;->c:Lahb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p2, p0, Lahb$a;->a:J

    .line 37
    iput-wide p4, p0, Lahb$a;->b:J

    .line 38
    return-void
.end method
