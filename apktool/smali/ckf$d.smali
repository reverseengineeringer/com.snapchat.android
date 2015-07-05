.class public final Lckf$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckg;
.implements Lckh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lckf$d;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1545
    new-instance v0, Lckf$d;

    const-string v1, ""

    invoke-direct {v0, v1}, Lckf$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lckf$d;->a:Lckf$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1549
    iput-object p1, p0, Lckf$d;->b:Ljava/lang/String;

    .line 1550
    return-void
.end method
