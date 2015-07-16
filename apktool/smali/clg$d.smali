.class public final Lclg$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclh;
.implements Lcli;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lclg$d;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1545
    new-instance v0, Lclg$d;

    const-string v1, ""

    invoke-direct {v0, v1}, Lclg$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lclg$d;->a:Lclg$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1549
    iput-object p1, p0, Lclg$d;->b:Ljava/lang/String;

    .line 1550
    return-void
.end method
