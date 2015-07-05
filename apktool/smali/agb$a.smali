.class public final Lagb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field final synthetic c:Lagb;


# direct methods
.method public constructor <init>(Lagb;JJ)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lagb$a;->c:Lagb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p2, p0, Lagb$a;->a:J

    .line 37
    iput-wide p4, p0, Lagb$a;->b:J

    .line 38
    return-void
.end method
