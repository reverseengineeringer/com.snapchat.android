.class public final Lbnw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/net/Socket;

.field c:Lbnq;

.field public d:Lblz;

.field e:Lbnt;

.field f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    sget-object v0, Lbnq;->a:Lbnq;

    iput-object v0, p0, Lbnw$a;->c:Lbnq;

    .line 517
    sget-object v0, Lblz;->c:Lblz;

    iput-object v0, p0, Lbnw$a;->d:Lblz;

    .line 518
    sget-object v0, Lbnt;->a:Lbnt;

    iput-object v0, p0, Lbnw$a;->e:Lbnt;

    .line 530
    iput-object p1, p0, Lbnw$a;->a:Ljava/lang/String;

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnw$a;->f:Z

    .line 532
    iput-object p2, p0, Lbnw$a;->b:Ljava/net/Socket;

    .line 533
    return-void
.end method
