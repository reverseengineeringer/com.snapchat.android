.class final Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/snapchat/android/model/chat/ChatFeedItem;

.field b:Lcom/snapchat/android/model/chat/ChatFeedItem;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/view/View;Landroid/view/View;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/model/chat/ChatFeedItem;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatFeedItem;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 128
    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->b:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 129
    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->c:Landroid/view/View;

    .line 130
    iput-object p4, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->d:Landroid/view/View;

    .line 131
    iput-object p5, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->e:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;

    .line 132
    return-void
.end method
