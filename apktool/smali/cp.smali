.class public abstract Lcp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcc;
.end annotation

.annotation build Lcd;
.end annotation


# static fields
.field private static final a:Lcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcp$1;

    invoke-direct {v0}, Lcp$1;-><init>()V

    sput-object v0, Lcp;->a:Lcp;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcp;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcp;->a:Lcp;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
