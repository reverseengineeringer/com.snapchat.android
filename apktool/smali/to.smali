.class public final Lto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSwipe:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "swipe"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lto;->mSwipe:Z

    .line 11
    return-void
.end method
