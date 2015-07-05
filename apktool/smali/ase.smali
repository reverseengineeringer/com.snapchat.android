.class public final Lase;
.super Larn;
.source "SourceFile"


# instance fields
.field private final b:Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Larn;-><init>()V

    .line 19
    iput-object p1, p0, Lase;->b:Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "TurnOnSmartFilters"

    return-object v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->TURN_ON_FILTERS_PAGE:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lase;->b:Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;

    return-object v0
.end method
