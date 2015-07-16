.class public abstract Lcu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcc;
.end annotation

.annotation build Lcd;
.end annotation


# static fields
.field private static final a:Lcu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcu$1;

    invoke-direct {v0}, Lcu$1;-><init>()V

    sput-object v0, Lcu;->a:Lcu;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcu;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcu;->a:Lcu;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
